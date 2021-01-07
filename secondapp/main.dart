import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bài 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'flutter bài 1 - home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Container(
          margin: const EdgeInsets.only(top:10),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          color: Colors.yellow,
          constraints: BoxConstraints.expand(height: 200),
         child: Container(
             margin: const EdgeInsets.all(10),
             padding: const EdgeInsets.all(10),
             alignment: Alignment.centerLeft,
             color: Colors.green,
           child: Text('Hello Giang ^_^'),
           transform: Matrix4.rotationZ(0.1),


         ),
        ),
      ),

    );
  }
}
