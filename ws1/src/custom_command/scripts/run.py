import pathlib
import argparse
import os

# from ament_index_python import get_package_share_directory

def generate(file_path):
    # package_share_path = \
    #         pathlib.Path(get_package_share_directory('custom_command'))
    # templates_path = package_share_path / 'resource'
    # file_path = templates_path / file_name

    if not os.path.exists(file_path):
        print(f"Error: File '{file_path}' not found!")
        exit(1)

    with open(file_path, 'r') as file:
        content = file.read()

    modified_content = content.replace('old', 'new')

    with open(file_path, 'w') as file:
        file.write(modified_content)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-r', type=str, required=True, help="Resource file path")
    args = parser.parse_args()
    generate(args.r)
    print("hello")
