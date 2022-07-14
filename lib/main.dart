
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:sliderpage/sliver_appbar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static final String title = 'profile';

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: MainPage(),
      );
}

  class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
  }

  class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
  body: buildPages(),
  );
  Widget buildPages() {

  return SliverAppBar1();
  }
  }
