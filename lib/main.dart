import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("dakhjk")),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 300,
                color: Colors.pink,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 200,
                color: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,

              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.yellow,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              width: 300,
               color: Colors.orange,
              padding: EdgeInsets.all(20.0),
              child: Text("Email"),


            ),
          ),













        ],
      ),
    ));
  }
}
