import os
import shutil
import yaml

def create_folder_and_file(folder_name, template_path='ssphub/scripts/project_template.qmd'):
    # Create the folder in the 'project' directory
    os.makedirs(os.path.join("ssphub/project", folder_name), exist_ok=True)

    # Define the path for the new file
    new_file_path = os.path.join("ssphub/project", folder_name, "index.qmd")

    # Copy the template to the new file
    shutil.copy(template_path, new_file_path)

# create_folder_and_file("new_project")

def find_index_qmd_files(root_folder='ssphub/project'):
    index_qmd_files = []
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file == 'index.qmd':
                index_qmd_files.append(os.path.join(root, file))
    return index_qmd_files


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
        qmd_content=file.read()

    # Split the YAML header and the HTML content
    yaml_header = qmd_content.split('---', 2)[1]
    yaml.safe_load(yaml_header)

    # Clean the YAML header
    cleaned_yaml_header = clean_yaml_header(yaml_header, newsletter_url)

    # Combine the cleaned YAML header and HTML content
    processed_qmd_content = f"---\n{cleaned_yaml_header}---\n{html_content}"

    # Save the processed QMD content to a file
    with open(qmd_output_file, 'w', encoding='utf-8') as f:
        f.write(processed_qmd_content)


def clean_yaml_header(yaml_header, newsletter_url):
    """
    Function to transform Yaml header of an index.qmd file and transform it for a qmd file that will be
    knitted to html. It keeps only title, updates the description with the link to the website,
    add lang, format and format options, including a css file.

    Arg :
        yaml_header: input yaml_header to clean, as string
        newsletter_url: url of the newsletter to insert a link to that newsletter

    Returns:
        (string, with Unicode formating) url to raw Qmd newsletter

    Example:
        >>> clean_yaml_header(
            '\ntitle: "La rentrée 2025:"\n\ndescription: |\n  Infolettre de __Septembre 2025__
            \n\n# Date published\ndate: \'2025-09-29\'\nnumber: 19\n\nauthors:\n  - Nicolas\n\nimage: mage.png\n\ntags:\n
            - datavis\n  - IA \n\ncategories:\n  - Infolettre\n\n',
            'https://ssphub.netlify.app/infolettre/'
            )
        "title: 'La rentrée 2025:'\ndescription: '*Infolettre de __Septembre 2025__ disponible sur le site du [réseau](https://ssphub.netlify.app/infolettre/)*'\nlang: fr\nformat:\n  html:\n    self-contained: true\n    css: ../newsletter_tools/email/css/style.css\n"

    """

    # Parse the YAML header1
    yaml_data = yaml.safe_load(yaml_header)

    # Keep only the specified keys
    # We put the link
    cleaned_yaml = {
        'title': yaml_data.get('title', '').strip(),
        'description': description
                }

    # Add missing params
    cleaned_yaml['lang'] = 'fr'
    cleaned_yaml['format'] = {
        'html': {
            'self-contained': True,  # To have images inside the email
            'css': '../newsletter_tools/email/css/style.css'
            }
        }

    # Convert the cleaned YAML back to a string
    cleaned_yaml_str = yaml.dump(cleaned_yaml, sort_keys=False,  allow_unicode=True, width=4096)
    return cleaned_yaml_str
