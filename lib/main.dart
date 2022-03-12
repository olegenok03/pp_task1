import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pp_task1',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final name1 = 'Михаил Билетов';
  final name2 = 'Олег Климов';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],//!!!
      appBar: AppBar(
        backgroundColor: Colors.blue,//!!!
        title: Text('измените название'),//!!!
        actions: [Icon(Icons.train)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    'Первый автор проекта: $name1',
                    textDirection: TextDirection.ltr,
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Второй автор проекта: $name2',
                    //textDirection: TextDirection.rtl,
                    softWrap: true,
                    style: TextStyle(fontSize: 24, backgroundColor: Colors.blueGrey, color: Colors.white),
                  )
                )
              ],
            ),
            Container(
              child: Icon(Icons.ac_unit, color: Colors.blue),
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
            Container(
              child: Icon(Icons.adb, color: Colors.blue, size: 80,),
              color: Colors.grey[50],
            )
          ],
        ),
      ),
    );
  }
}
