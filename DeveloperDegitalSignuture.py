import os

# Your information
author_info = """
  Author: Md Maruf Ahmed Robin
  Title: Lead Mobile App Developer
  Email: marufrobin00@gmail.com
  GitHub: https://github.com/marufrobin
  Website: https://marufrobin.com
"""

# Specify the directory of your Flutter project
project_directory = '/path/to/your/flutter/project'

# Iterate through all Dart files in the project directory
for subdir, dirs, files in os.walk(project_directory):
    for file in files:
        if file.endswith(".dart"):
            file_path = os.path.join(subdir, file)

            # Read the content of the file
            with open(file_path, 'r') as f:
                content = f.read()

            # Add the comment block at the beginning of the file
            with open(file_path, 'w') as f:
                f.write(f"/*{author_info}*/\n\n{content}")
