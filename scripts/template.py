import os
import yaml
import sys


def find_index_qmd_files(root_folder='ssphub/project'):
    index_qmd_files = []
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file == 'index.qmd':
                index_qmd_files.append(os.path.join(root, file))
    return index_qmd_files

# find_index_qmd_files()


def extract_categories(file_path='ssphub/project/2019_gdp_tracker/index.qmd'):
    """
    Extract categories of the YAML part of index.qmd

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

    return yaml_header.get('categories', '')


def conc_yaml_categories(root_folder='ssphub/project'):
    # Parse the YAML header1
    categories_conc_list = []

    for file_path in find_index_qmd_files(root_folder):
        categories_list = extract_categories(file_path)
        categories_conc_list = categories_conc_list + categories_list

    categories_conc_list = list(set(categories_conc_list))

    return categories_conc_list


# conc_yaml_categories()

def add_categories_to_yaml(qmd_output_file, template_path='project_template.qmd', root_folder='../project'):
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


def create_folder_and_file(folder_name, template_path='project_template.qmd'):
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
