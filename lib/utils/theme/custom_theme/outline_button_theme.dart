
import '../../../../../utils/constants/exports.dart';


class COutlineButtonTheme{
  COutlineButtonTheme._();

  static final  lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
    ),
  );

  static final  darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
    ),
  );
}