import base64
import json
from pathlib import Path
import uuid


def generate_uuid():
    """Helper to generate a random UUID string."""
    return str(uuid.uuid4())


def file_to_base64(file_path):
    """Reads a file and returns its content as a base64 encoded string."""
    with open(file_path, "rb") as f:
        encoded_bytes = base64.b64encode(f.read())
        return encoded_bytes.decode("utf-8")


def read_file_as_string(file_path):
    """Reads a file and returns its content as a plain string."""
    with open(file_path, "r", encoding="utf-8") as f:
        return f.read()


def extract_readme_title(file_path, fallback_name):
    """Extracts the first line of the readme and cleans up Markdown header tags."""
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            first_line = f.readline()
            if first_line:
                # Strip leading '#', whitespace, and trailing newlines
                title = first_line.lstrip("#").strip()
                if title:
                    return title
    except Exception:
        pass
    return fallback_name  # Return the folder name if file is empty or unreadable


def process_directories(root_dir_path):
    root_dir = Path(root_dir_path)

    for subfolder in root_dir.iterdir():
        if subfolder.is_dir():
            readme_path = subfolder / "readme.md"
            setup_path = subfolder / "setup.sh"
            solution_path = subfolder / "solution.sh"

            if (
                not readme_path.exists()
                or not setup_path.exists()
                or not solution_path.exists()
            ):
                print(
                    f"Skipping {subfolder.name}: Missing one or more required files."
                )
                continue

            print(f"Processing folder: {subfolder.name}...")

            # 1. Extract the title for the "name" key and read contents
            story_name = extract_readme_title(
                readme_path, fallback_name=subfolder.name
            )
            readme_content = read_file_as_string(readme_path)
            setup_base64 = file_to_base64(setup_path)
            solution_base64 = file_to_base64(solution_path)

            # 2. Construct the dynamic JSON payload
            json_data = {
                "key": generate_uuid(),
                "name": story_name,  # Extracted Readme Title injected here
                "description": "",
                "elements": [
                    {
                        "key": generate_uuid(),
                        "page": 0,
                        "category": "SCENARIO",
                        "mode": "SOLO",
                        "display": "CODE",
                        "scenario": {
                            "category": "CODE",
                            "key": generate_uuid(),
                            "markdown": readme_content,
                            "condition": {
                                "category": "EMPTY_CONDITION",
                                "key": generate_uuid(),
                            },
                            "setup": [
                                {
                                    "base64Content": setup_base64,
                                    "filename": "setup.sh",
                                    "category": "FILE",
                                    "key": generate_uuid(),
                                    "isRemoteUser": True,
                                    "remoteUserName": "system",
                                },
                                {
                                    "base64Content": solution_base64,
                                    "filename": "solution.sh",
                                    "category": "FILE",
                                    "key": generate_uuid(),
                                    "isRemoteUser": True,
                                    "remoteUserName": "system",
                                },
                                {
                                    "value": "sh ../system/setup.sh",
                                    "category": "DEFAULT",
                                    "key": generate_uuid(),
                                    "isRemoteUser": False,
                                    "remoteUserName": "local"
                                }
                            ],
                        },
                        "components": [
                            "DESCRIPTION",
                            "FILE_EDITOR",
                            "TREE",
                            "HELP",
                        ],
                        "validateOnSubmit": False,
                    }
                ],
            }

            # 3. Output the JSON file into the respective subfolder
            output_file_path = subfolder / "output.json"
            with open(output_file_path, "w", encoding="utf-8") as json_file:
                json.dump(json_data, json_file, indent=2)

            print(f"Successfully created {output_file_path.name}")


if __name__ == "__main__":
    TARGET_DIRECTORY = "."
    process_directories(TARGET_DIRECTORY)