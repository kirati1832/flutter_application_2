import 'package:flutter/material.dart';
import 'package:flutter_application_2/about_page2.dart';
import 'package:flutter_application_2/PageForm.dart';

class AboutPage extends StatefulWidget {
  final String? Name; //?จะส่งหรือไม่ส่งก็ได้ถ้า
  const AboutPage({super.key,required this.Name});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  double _output = 0;

  final TextEditingController _volt = TextEditingController();
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/charge.png",
            height: 250,
          ),
          const Text(
            'ขอบคุณที่ใช้บริการ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ\n\n',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const Row(
            children: [
              const Text('สรุปรายละเอียดการชาร์จ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.calendar_month),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              Text(
                ' วันที่ชาร์จ',
                style: TextStyle(
                  fontSize: 18,
                ),
                //),
              ),
              Spacer(),
              Text(
                '9 กันยายน 2566',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.charging_station),
              Text(
                ' สถานีชาร์จ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              // Card(
              //   color: Colors.blue,
              //   child: Text("ssss"),
              // ),
              Spacer(),
              Text(
                'Pea Volta กรุงเทพ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.electric_car),
              Text(
                ' ประเภทหัวชาร์จ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                'CCS2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.punch_clock),
              Text(
                ' เวลาการชาร์จ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                '00:12:32',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.bolt),
              const Text(
                ' จำนวนหน่วย',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                height: 50,
              child: TextField(
                controller: _volt,
                decoration: const InputDecoration(hintText: 'kW' ,border: OutlineInputBorder()),
                
              ),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_output',style: TextStyle(fontSize: 20),),
              Text(' บาท/หน่วย',style: TextStyle(fontSize: 20),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${widget.Name}',style: TextStyle(fontSize: 20),),
          ],),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              setState(() {
                double input = double.parse(_volt.text);
                _output = input * 3;
              });
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => const AboutPage2()),
              // );
            },
            child: const Text(
              'สรุปค่าใช้จ่าย',
              style: TextStyle(color: Colors.black),
            ),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              // setState(() {
              //   double input = double.parse(_volt.text);
              //   _output = input * 3;
              // });
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PageForm()),
              );
            },
            child: const Text(
              'ไปหน้าแบบฟอร์ม',
              style: TextStyle(color: Colors.black),
            ),
          ),
          // const Expanded(
          //   child: Text(
          //     'ขอบคุณที่ใช้บริการ',
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          // )
        ],
      ),

      // body: const Column(
      //   children: [
      //     Text('Hello test CS KMUTNB',
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      //     Text('My mobile app',
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      //   ],
      // )
    );
  }
}
