import '../../../../../utils/constants/exports.dart';


class CAppTheme{
  CAppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CtextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlineButtonTheme.lightOutlineButtonTheme,
    chipTheme: CChipTheme.lightChipTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCheckboxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme
  );

  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CtextTheme.darkTextTheme,
      elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: COutlineButtonTheme.darkOutlineButtonTheme,
      chipTheme: CChipTheme.darkChipTheme,
      appBarTheme: CAppBarTheme.darkAppBarTheme,
      checkboxTheme: CCheckboxTheme.darkCheckBoxThemeData,
      bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme
  );

}