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
  var projectDirectory =
      '/home/marlin/code/flutterApp/graphland-dev/dinebd_partner_mobile_app';

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
