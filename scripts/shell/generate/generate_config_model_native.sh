flutter pub run pigeon \
  --input lib/pigeons/halo_config_schema.dart \
  --dart_out lib/generate/pigeon_halo_config.dart \
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/ConfigFlutter.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/ConfigFlutter.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/ConfigFlutter.java \
  --java_package "io.flutter.plugins"
