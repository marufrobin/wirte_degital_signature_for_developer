# Write Digital Signature for Developer

This repository contains simple scripts for adding a developer's digital signature to all `.dart` files in a Flutter project. The scripts, written in both Dart and Python, iterate through a specified directory and prepend a formatted comment block containing the developer's details (name, title, email, GitHub, and website) to each `.dart` file.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [How It Works](#how-it-works)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [License](#license)
8. [Contact](#contact)

## Introduction

Developers often add their information to code files for identification and collaboration purposes. These scripts allow you to automatically add a standard digital signature to the top of all `.dart` files in your Flutter project. The signature includes information such as the author's name, title, email, GitHub profile, and personal website.

## Features

- Automatically add developer's digital signature to all `.dart` files.
- Available in both Dart and Python for flexibility.
- Customize the signature with your own details.
- Recursively scans directories to ensure all relevant files are updated.

## How It Works

### Dart Script

The Dart script scans the project directory for `.dart` files and adds the specified digital signature at the beginning of each file.

```dart
import 'dart:io';

void main() {
  // Your information
  var authorInfo = '''

-----------------------------------------------------------------------------
                  🌟  Author: Md Maruf Ahmed Robin
                  💼  Title: Lead Mobile App Developer
                  📧  Email: marufrobin00@gmail.com
                  🐙  GitHub: https://github.com/marufrobin
                  🌐  Website: https://marufrobin.com
-----------------------------------------------------------------------------
 ''';

  // Specify the directory of your Flutter project
  var projectDirectory = '/path/to/your/flutter/project';

  // Iterate through all Dart files in the project directory
  Directory(projectDirectory).listSync(recursive: true).forEach((entity) {
    if (entity is File && entity.path.endsWith('.dart')) {
      var filePath = entity.path;

      // Read the content of the file
      var content = File(filePath).readAsStringSync();

      // Add the comment block at the beginning of the file
      File(filePath).writeAsStringSync('/*$authorInfo*/\n\n$content');
    }
  });
}
```

### Python Script

The Python script similarly scans for `.dart` files and inserts the digital signature at the top.

```python
import os

# Your information
author_info = """
-----------------------------------------------------------------------------
                  🌟  Author: Md Maruf Ahmed Robin
                  💼  Title: Lead Mobile App Developer
                  📧  Email: marufrobin00@gmail.com
                  🐙  GitHub: https://github.com/marufrobin
                  🌐  Website: https://marufrobin.com
-----------------------------------------------------------------------------
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
```

## Installation

### Dart Script

1. Clone the repository:
   ```bash
   git clone https://github.com/marufrobin/write_digital_signature_for_developer.git
   cd write_digital_signature_for_developer
   ```
2. Ensure you have the Dart SDK installed. You can install it from [Dart's official site](https://dart.dev/get-dart).
3. Update the `projectDirectory` variable in `DeveloperDegitalSignuture.dart` to point to your Flutter project.
4. Run the Dart script:
   ```bash
   dart DeveloperDegitalSignuture.dart
   ```

### Python Script

1. Clone the repository:
   ```bash
   git clone https://github.com/marufrobin/write_digital_signature_for_developer.git
   cd write_digital_signature_for_developer
   ```
2. Make sure Python is installed on your system. You can download it from [Python's official site](https://www.python.org/).
3. Update the `project_directory` variable in `DeveloperDegitalSignuture.py` to point to your Flutter project.
4. Run the Python script:
   ```bash
   python DeveloperDegitalSignuture.py
   ```

## Usage

Once the script has been run successfully, all `.dart` files in your Flutter project will have a digital signature at the top that looks like this:

```dart
/*
-----------------------------------------------------------------------------
                  🌟  Author: Md Maruf Ahmed Robin
                  💼  Title: Lead Mobile App Developer
                  📧  Email: marufrobin00@gmail.com
                  🐙  GitHub: https://github.com/marufrobin
                  🌐  Website: https://marufrobin.com
-----------------------------------------------------------------------------
*/
```

## Contributing

If you'd like to contribute, feel free to open a pull request. Contributions are welcome!

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact

If you have any questions, feel free to reach out:

- 📧 Email: marufrobin00@gmail.com
- 🐙 GitHub: [marufrobin](https://github.com/marufrobin)
- 🌐 Website: [marufrobin.com](https://marufrobin.com)
