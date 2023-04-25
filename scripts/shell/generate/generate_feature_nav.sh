flutter pub run pigeon \
  --input lib/pigeons/nav_schema.dart \
  --dart_out lib/generate/pigeon_nav.dart \
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/Nav.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/Nav.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/Nav.java \
  --java_package "io.flutter.plugins"