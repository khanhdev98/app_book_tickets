flutter pub run pigeon \
  --input lib/pigeons/tour_module_schema.dart\
  --dart_out lib/generate/pigeon_tour_module_schema.dart\
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/TourChannelNav.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/TourChannelNav.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/TourChannelNav.java \
  --java_package "io.flutter.plugins"