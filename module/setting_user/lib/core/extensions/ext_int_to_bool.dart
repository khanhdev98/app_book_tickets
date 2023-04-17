extension CheckTickedExtension on int {
  bool get isCheck {
    if (this == 1) {
      return true;
    } else {
      return false;
    }
  }
}
