import 'package:flutter/material.dart';
import 'package:flutter_application_2/about_page.dart';
import 'package:flutter_application_2/about_page2.dart';

class PageForm extends StatefulWidget {
  const PageForm({super.key});

  @override
  State<PageForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageForm> {
  String _output = "";
  final _textController = TextEditingController();
  String input = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/unnamed.png',
          height: 100,
        ),
        leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
                Navigator.pushNamed(context, '/page2');
            }),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                width: 250,
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(hintText: 'Name',labelText: 'Name',border: OutlineInputBorder()),
                
              ),),
              SizedBox(height: 10),
              const SizedBox(
                width: 250,
              child: TextField(
                //obscureText: true,
                //controller: _textController,
                decoration: InputDecoration(hintText: 'NickName',labelText: 'NickName',border: OutlineInputBorder()),
                
              ),),
          //Text("$_output"), 
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              input  =_textController.text;
              // setState(() {
              //   _output = 'Hi, $input Good Job';
              // });
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AboutPage(Name:input,)),
              );
            },
            child: const Text(
              'ยืนยัน',
              style: TextStyle(color: Colors.black),
            ),
          ),
            ]
                ),
        ),
      
      ),
    );
  }
}
