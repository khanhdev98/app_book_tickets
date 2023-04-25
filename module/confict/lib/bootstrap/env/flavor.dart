/// @author : Nguyen
class Flavor {
  final String value;

  /// The Release version of pro flavor
  /// This State can't override the host
  static final release = Flavor._('release');

  /// The State of Development of the flutter environment
  /// This State can override the host
  static final plugin = Flavor._('plugin');

  /// The State of Development of the native app
  /// This State can override the host
  static final dev = Flavor._('dev');

  static List<Flavor> get values => [
        release,
        plugin,
        dev,
      ];

  Flavor._(this.value);
}
