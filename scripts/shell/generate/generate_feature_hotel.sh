flutter pub run pigeon \
  --input lib/pigeons/hotel_feed_schema.dart\
  --dart_out lib/generate/pigeon_hotel_feed.dart\
  --objc_header_out .ios/Flutter/FlutterPluginRegistrant/Classes/HotelChannelNav.h \
  --objc_source_out .ios/Flutter/FlutterPluginRegistrant/Classes/HotelChannelNav.m \
  --java_out .android/Flutter/src/main/java/io/flutter/plugins/HotelChannelNav.java \
  --java_package "io.flutter.plugins"