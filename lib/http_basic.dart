import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> fetchData() async {
  final response =
      await http.get(Uri.parse('https://itpart.net/mobile/api/product1.php'));
  if (response.statusCode == 200) {
    final jSONbody = jsonDecode(utf8.decode(response.bodyBytes));
    String strBody = response.body.toString();
    debugPrint(strBody);

    return strBody;
  } else {
    throw Exception('problem . .');
  }
}

class HttpBasic extends StatefulWidget {
  const HttpBasic({super.key});

  @override
  State<HttpBasic> createState() => _HttpBasicState();
}

class _HttpBasicState extends State<HttpBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HttpBasic Page')),
      body: FutureBuilder(future: fetchData(), builder: (context , asd){
        if (asd.connectionState == ConnectionState.waiting){
          return CircularProgressIndicator();
        }
        else if (asd.hasData){
          return Text('${asd.data}');
        }
        else if (asd.hasError){
          return Text('${asd.hasError}');
        }
        return Text('No data available');
      })
      );
  }
}
