class HomeBanner {
  final String _color;
  final String _banner;
  final String _msg;

  HomeBanner(this._banner, this._color, this._msg);

  String get bgColor => _color;
  String get banner => _banner;
  String get text => _msg;
}
