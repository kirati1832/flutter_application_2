import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageForm.dart';
import 'package:flutter_application_2/about_page.dart';
import 'package:flutter_application_2/about_page2.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListPage> {
  String _output = "";
  final _textController = TextEditingController();
  String input = "";
  final List<int> products = <int>[100,500];
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
      body: ListView.separated(itemCount: products.length,
      itemBuilder: (context, index) => ListTile(title: const Text('Gemling Filter', style: TextStyle(fontSize: 20)),), 
      separatorBuilder: (BuildContext context, int index) => const Divider(),
        // children: [
        //   ListTile(
        //     title: const Text('Gemling Filter', style: TextStyle(fontSize: 20)),
        //     leading: const Icon(Icons.person),
        //     subtitle: const Text("View/Edit your profile"),
        //     trailing: const Icon(Icons.arrow_forward_ios),
        //     tileColor: const Color.fromARGB(255, 119, 190, 121),
        //     onTap:() => Navigator.push(context,MaterialPageRoute(builder: (context) => const PageForm())),
        //   ),
        //   const ListTile(
        //     title: Text('Blink Filter', style: TextStyle(fontSize: 20)),
        //     leading: Icon(Icons.calendar_month),
        //     subtitle: Text("View/Edit your profile"),
        //     trailing: Icon(Icons.arrow_forward_ios),
        //     tileColor: Color.fromARGB(255, 251, 255, 0),
        //   ),
        //   const ListTile(
        //     title: Text('Chaos Filter', style: TextStyle(fontSize: 20)),
        //     leading: Icon(Icons.note),
        //     subtitle: Text("View/Edit your profile"),
        //     trailing: Icon(Icons.arrow_forward_ios),
        //     tileColor: Color.fromARGB(255, 255, 0, 179),
        //   ),
        // ],
      ),
    );
  }
}
