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
  final List<String> entries = <String>['A','B','C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  var lv1 = ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
    separatorBuilder: (BuildContext context, int index) => const Divider(
      color: Colors.red,
      indent: 20,
      endIndent: 0,
      thickness: 5,

    ),
  );
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Container(
        constraints: BoxConstraints.expand(height:100),
        color:Colors.yellow,
        child: lv1,
      )

    );
  }
}
