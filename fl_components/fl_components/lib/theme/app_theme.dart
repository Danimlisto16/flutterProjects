import 'package:fl_components/screens/screens.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: primary,

      //appBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //button theme
      buttonTheme: const ButtonThemeData(
        buttonColor: primary,
      ),

      //textbutton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.green
          ),
        ),


         //floatingActionButton background color
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5.0,
      ),

      elevatedButtonTheme:  ElevatedButtonThemeData(
        style:  ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        )
      ),


      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color:primary),//el de arriba
        
        
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight:  Radius.circular(10)
            )
        ),
        focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        )
        
      )


      


      );
}
