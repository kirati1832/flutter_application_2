import 'package:flutter/material.dart';
import 'package:flutter_application_2/about_page.dart';

class AboutPage2 extends StatefulWidget {
  const AboutPage2({super.key});

  @override
  State<AboutPage2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AboutPage2> {
  String _output = "";
  final _textController = TextEditingController();
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
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('leading icon');
            }),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              const SizedBox(
                width: 250,
              child: TextField(
                //controller: _textController,
                decoration: InputDecoration(hintText: 'Enter Email',labelText: 'Email',border: OutlineInputBorder()),
                
              ),),
              SizedBox(height: 10),
              const SizedBox(
                width: 250,
              child: TextField(
                obscureText: true,
                //controller: _textController,
                decoration: InputDecoration(hintText: 'Enter Password',labelText: 'Password',border: OutlineInputBorder()),
                
              ),),
          //Text("$_output"), 
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              String input = _textController.text;
              // setState(() {
              //   _output = 'Hi, $input Good Job';
              // });
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutPage()),
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
