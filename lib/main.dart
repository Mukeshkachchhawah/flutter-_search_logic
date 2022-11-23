import 'package:flutter/material.dart';
import 'package:http/http.dart' as htt;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  const Flutter_ApiTest(),
     // home: const Home_Page(),
    );
  }
}
class Flutter_ApiTest extends StatefulWidget {
  const Flutter_ApiTest({super.key});

  @override
  State<Flutter_ApiTest> createState() => _Flutter_ApiTestState();
}

class _Flutter_ApiTestState extends State<Flutter_ApiTest> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Api Test"),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.red,
          child: Center(
            child: Text("Hello Word",style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

