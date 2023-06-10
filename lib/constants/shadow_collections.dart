part of 'constants.dart';

class ShadowCollections {
  static List<BoxShadow> softShadow = [
    BoxShadow(
      color: Color(0xFF6E6E6E).withOpacity(0.10),
      spreadRadius: 0,
      blurRadius: 8,
      offset: Offset(0, 1), // changes position of shadow
    )
  ];
}
