// import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // 앱 오른쪽 위 디버그 표시 제거
      title: "BBANTO",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: const Text("MainAxisAlignment.start",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
      ),
      body: Column(
        children: <Widget> [
          Container(
            margin: const EdgeInsets.all(5.0),
            color: Colors.yellow[400],
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                Icon(Icons.star, size: 50,),
                Icon(Icons.star, size: 50,),
                Icon(Icons.star, size: 50,),
              ],
            ),
          ),
          Center(
            child: Column(
              children: <Widget> [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(context) => const SecondPage(),
                      ));
                    },
                    child: const Text("Go to second page"),
                  ),
                ),
              ]
            ),
          )
        ],
      )
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
          ),
          child: const Text("Go back to first page",
          style: TextStyle(
            color: Colors.black,
          ),),
          onPressed: () {Navigator.pop(context);},
          )
        ),
    );
  }
}
