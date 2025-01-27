import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageForm.dart';
import 'package:flutter_application_2/about_page.dart';
import 'package:flutter_application_2/about_page2.dart';
import 'package:flutter_application_2/ListPage.dart';

class MyFutureBuilderPage extends StatefulWidget {
  const MyFutureBuilderPage({super.key});

  @override
  State<MyFutureBuilderPage> createState() => _MyFutureBuilderPageState();
}

class _MyFutureBuilderPageState extends State<MyFutureBuilderPage> {
  // Simulating an asynchronous operation that returns a Future
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Hello, FutureBuilder!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
