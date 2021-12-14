import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealmonkey/Source/pages.dart';
import 'package:mealmonkey/Styles/styles.dart';

import 'Styles/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size( 1080, 2160),
        builder: () => MaterialApp(
      title: 'Meal Monkey Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    //primary: mainColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
      padding: EdgeInsets.all(kButtonPadding),
      minimumSize: Size(double.infinity, kButtonPadding)
    ),
        ),
        
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          floatingLabelStyle: const TextStyle(
            color: secondarycolor,
          ),
          contentPadding: EdgeInsets.symmetric(vertical:4,horizontal: 28)
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll  see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        kRouteRoot: (context) =>  IntroPage(),
        kRouteIntro :(context) =>   SecondIntroPage(),
        kRouteStarter : (context) =>  StarterPAge(),
        kRouteLogin :(context) =>   Login(),
        kRouteRegister :(context) => Register_Page(),
        kRouteRooteEnterEmail :(context) => EnterEmailPage(),
        kRouteRooteEnterOtp :(context) => Enter_Otp(),

      },
      debugShowCheckedModeBanner: false,
      ) );
  }
}
