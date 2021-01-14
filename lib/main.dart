import 'package:flutter/material.dart';
import 'package:flutter_news/pages/welcome/welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //高度去掉，顶部，底部，导航812 - 44 - 34;
    return ScreenUtilInit(
      designSize: Size(375, 734),
      allowFontScaling: true,
      child: MaterialApp(
        title: 'Material App',
        home: WelcomePage(),
      ),
    );
  }
}
