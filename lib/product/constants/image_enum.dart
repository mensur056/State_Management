enum ImageEnums { door }

extension ImageEnumsExtension on ImageEnums {
  String get toPath => 'assets/images/ic_$name.png';
}
