import 'package:flutter/material.dart';
import 'package:flutter_work_ex1/presentation/final_screen.dart';
import 'package:flutter_work_ex1/presentation/hotel_first_screen.dart';
import 'package:flutter_work_ex1/presentation/hotel_second_screen.dart';
import 'package:flutter_work_ex1/presentation/screen_bronirovanie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          builder: (_, child) => MaterialApp(
                  routes: {
                    'main': (context) => Hotel_Main(),
                    '2screen': (context) => Second_screen(),
                    'bronirovanie_screen': (context) => Screen_Bronirovanie(),
                    'final': (context) => Final_Screen()
                  },
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    fontFamily: 'Sfprodisplay',
                  ),
                  title: 'Отель',
                  home: const Hotel_Main()));
    });
  }
}
