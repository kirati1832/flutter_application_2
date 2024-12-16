import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 86, 1, 88)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 0, 0))),
      home: Scaffold(
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
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
            const Row(
              children: [
                Icon(Icons.bolt),
                Text(
                  ' จำนวนหน่วย',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  '9.314 KWh',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {},
              child: Text('สรุปค่าใช้จ่าย',style: TextStyle(color: Colors.black),),
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
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 13)),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Kirati App'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Count Down:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }