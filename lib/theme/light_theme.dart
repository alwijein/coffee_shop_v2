part of 'theme.dart';

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: ColorCollections.primaryColor,
    scaffoldBackgroundColor: ColorCollections.backgroundColor1,
    appBarTheme: AppBarTheme(
      iconTheme: iconThemeData(),
      backgroundColor: ColorCollections.backgroundColor1,
      titleTextStyle: TextCollections.primaryTextStyle.copyWith(
        fontSize: 18,
      ),
      elevation: 1,
      centerTitle: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorCollections.primaryColor,
      foregroundColor: ColorCollections.backgroundColor2,
    ),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    hintStyle: TextCollections.subtitleTextStyle.copyWith(
      fontSize: 14,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorCollections.secondaryColor,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 10.0,
    ),
  );
}

IconThemeData iconThemeData() {
  return const IconThemeData(
    color: ColorCollections.primaryColor,
  );
}
