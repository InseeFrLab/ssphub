import os
import yaml
import sys
import polars as pl

def find_index_qmd_files(root_folder='ssphub/project', pattern='index.qmd'):
    index_qmd_files = []
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file == pattern:
                index_qmd_files.append(os.path.join(root, file))
    return index_qmd_files

# find_index_qmd_files()


def extract_yaml_key(file_path='ssphub/project/2019_gdp_tracker/index.qmd', yaml_key='categories'):
    """
    Extract selected key of a YAML part of the given Qmd file

    Args:

    Returns:
        list

    Example:
        >>>
    """
    with open(file_path, mode='r') as file:
        qmd_content = file.read()

    # Split the YAML header and the HTML content
    yaml_header = qmd_content.split('---', 2)[1]
    yaml_header = yaml.safe_load(yaml_header)

    return yaml_header.get(yaml_key, '')


def extract_categories(file_path='ssphub/project/2019_gdp_tracker/index.qmd'):
    """
    Extract categories of the YAML part of index.qmd

    Args:

    Returns:
        list

    Example:
        >>>
    """

    return extract_yaml_key(file_path=file_path, yaml_key='categories')


def conc_yaml_categories(root_folder='ssphub/project'):
    # Parse the YAML header1
    categories_conc_list = []

    for file_path in find_index_qmd_files(root_folder):
        categories_list = extract_categories(file_path)
        categories_conc_list = categories_conc_list + categories_list

    categories_conc_list = list(set(categories_conc_list))

    return categories_conc_list


# conc_yaml_categories()

def add_categories_to_yaml(qmd_output_file, template_path='1_project_template.qmd', root_folder='../project'):
    with open(template_path, mode='r') as file:
        qmd_content = file.read()
    parts = qmd_content.split('---', 2)

    yaml_header = parts[1]
    md_content = parts[2]

    # Clean the YAML header
    yaml_header = yaml.safe_load(yaml_header)

    # Keep only the specified keys
    yaml_header['categories'] = conc_yaml_categories(root_folder=root_folder)

    # Convert the cleaned YAML back to a string
    yaml_header_str = yaml.dump(yaml_header, sort_keys=False,  allow_unicode=True, width=4096)

    # Combine the cleaned YAML header and HTML content
    processed_qmd_content = f"---\n{yaml_header_str}---\n{md_content}"

    # Save the processed QMD content to a file
    with open(qmd_output_file, 'w', encoding='utf-8') as f:
        f.write(processed_qmd_content)

# add_categories_to_yaml('test.qmd')


def create_table_of_all_qmd(root_folder='ssphub/project'):
    """
    Extract all Qmd file (named index.qmd and index.en.qmd) details of a folder

    Args:
        root_folder (string) : folder to search index.qmd files into

    Returns:
        a pl dataframe with project title, file path, folder name, description
        and path to english version if any

    Example:
        >>> create_table_of_all_qmd()
        shape: (24, 6)
        ┌─────────────────────────────────┬────────────────────────────┬─────────────────────────────────┬─────────────────────────────────┬─────────────────────────────────┬─────────────────────────────────┐
        │ path                            ┆ folder                     ┆ title_fr                        ┆ description_fr                  ┆ categories_fr                   ┆ path_en                         │
        │ ---                             ┆ ---                        ┆ ---                             ┆ ---                             ┆ ---                             ┆ ---                             │
        │ str                             ┆ str                        ┆ str                             ┆ str                             ┆ list[str]                       ┆ str                             │
        ╞═════════════════════════════════╪════════════════════════════╪═════════════════════════════════╪═════════════════════════════════╪═════════════════════════════════╪═════════════════════════════════╡
        │ ssphub/project/2020_donnees_ca… ┆ 2020_donnees_caisse        ┆ Classification des données de … ┆ Classifier des données de cais… ┆ ["Python", "codification autom… ┆ ssphub/project/2020_donnees_ca… │
        │ ssphub/project/2020_webscrapin… ┆ 2020_webscraping_ipc       ┆ Webscrapper les caractéristiqu… ┆ Collecter sur le web les carac… ┆ ["en production ??", "Insee", … ┆ ssphub/project/2020_webscrapin… │
    """
    # List all projects
    df = pl.DataFrame({'path':find_index_qmd_files(root_folder=root_folder, pattern='index.qmd')})
    # Add project details
    df = df.with_columns(
        folder=pl.col('path').str.extract(r"project/(\w+)", group_index=1),
        title_fr=pl.col('path').map_elements(lambda x: extract_yaml_key(file_path=x, yaml_key='title'), return_dtype=pl.String()),
        description_fr=pl.col('path').map_elements(lambda x: extract_yaml_key(file_path=x, yaml_key='description'), return_dtype=pl.String()),
        categories_fr=pl.col('path').map_elements(lambda x: extract_yaml_key(file_path=x, yaml_key='categories'), return_dtype=pl.List(pl.String()))
    )

    # Add english version if exists
    df_en = pl.DataFrame({'path_en':find_index_qmd_files(root_folder=root_folder, pattern='index.en.qmd')})
    df_en = df_en.with_columns(
        folder=pl.col('path_en').str.extract(r"project/(\w+)", group_index=1),
    )

    df = df.join(df_en, on='folder', how='full', coalesce=True)  # Coalesce: to merge similar column

    return df


def create_folder_and_file(folder_name, template_path='1_project_template.qmd'):
    # Create the folder in the 'project' directory
    os.makedirs(os.path.join("../project", folder_name), exist_ok=True)

    # Define the path for the new file
    new_file_path = os.path.join("../project", folder_name, "index.qmd")

    # Copy the template to the new file
    add_categories_to_yaml(new_file_path, template_path=template_path, root_folder="../project")


if __name__ == '__main__':
    foldername = sys.argv[1]
    if len(sys.argv) > 2:
        template_path = sys.argv[2]
        create_folder_and_file(foldername, template_path)
    else:
        create_folder_and_file(foldername)
