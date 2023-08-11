int hexColor( String color ) {
  // ignore: prefer_interpolation_to_compose_strings
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;

}