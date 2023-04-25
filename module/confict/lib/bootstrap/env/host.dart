/// @author : Nguyen
class Host {

  final String value;

  /// The Release version of pro flavor

  static final test = Host._("test");

  /// The State of Development of the flutter environment

  static final staging = Host._("staging");

  /// The State of Development of the native applicaton

  static final live = Host._("live");

  static List<Host> get values => <Host>[test, staging, live];

  Host._(this.value);
}
