import 'package:flutter/material.dart';
import 'package:mnrc/src/nrc_widget.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myanmar NRC"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Name",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          NrcWidget(),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              //
            },
            child: Text("Go to the Moon"),
          ),
        ],
      ),
    );
  }
}
