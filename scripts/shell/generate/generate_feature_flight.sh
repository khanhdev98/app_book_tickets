flutter pub run pigeon \
  --input lib/pigeons/flight_module_schema.dart \
  --dart_out lib/generate/pigeon_flight_feed.dart \
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/FlightFlutter.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/FlightFlutter.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/FlightFlutter.java \
  --java_package "io.flutter.plugins"