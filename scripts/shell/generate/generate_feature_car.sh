flutter pub run pigeon \
  --input lib/pigeons/car_feed_schema.dart \
  --dart_out lib/generate/pigeon_car_feed.dart \
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/CarFlutter.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/CarFlutter.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/CarFlutter.java \
  --java_package "io.flutter.plugins"
