import 'package:flutter/material.dart';

import 'package:flutter_app/routes/Routes.dart' as prefix0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        home: Tabs()
    debugShowCheckedModeBanner: false,
    initialRoute: '/',//初始化的时候加载的路由
      onGenerateRoute: prefix0.onGenerateRoute,
    );
  }
}

