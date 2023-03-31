
class PreventClickFaster {
  static final PreventClickFaster instance = PreventClickFaster._();
  PreventClickFaster._();
  DateTime? _handleClickTime;

  static bool isRedundantClick({duration = 500}) {
    if (instance._handleClickTime == null) {
      instance._handleClickTime = DateTime.now();
      return false;
    }
    if (DateTime.now().difference(instance._handleClickTime!).inMilliseconds < duration) {
      return true;
    }
    instance._handleClickTime = DateTime.now();
    return false;
  }
}