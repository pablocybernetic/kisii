import 'package:flutter/material.dart';
import 'package:kisii/screens/login.dart';
import 'package:kisii/screens/scanner.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MyHome()));

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Image.asset(
          'assets/images/kisii.png',
          height: 70,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.school, color: Colors.black),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('You have new notification yet')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
        flexibleSpace: const FlexibleSpaceBar(),
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              SizedBox(height: 15.0),
              Text('Kisii university',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15.0),
              Row(children: [
                Expanded(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.qr_code,
                                size: 50,
                              ),
                              tooltip: 'Scan',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'Authentication using QR Code',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Scan the QR Code to access the facilities',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const QRViewExample(),
                                  ));
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('Scan')
                                    ],
                                  ),
                                ),
                              ),
                            ) //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.person_sharp,
                                size: 50,
                              ),
                              tooltip: 'Scan',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'Your Profile',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Scan the QR Code to access the facilities',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const QRViewExample(),
                                  ));
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('Scan')
                                    ],
                                  ),
                                ),
                              ),
                            ) //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
              ]),
              Row(children: [
                Expanded(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.money,
                                size: 50,
                              ),
                              tooltip: 'Scan',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'Fee Status',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Check out Your Fee status',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const QRViewExample(),
                                  ));
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('Scan')
                                    ],
                                  ),
                                ),
                              ),
                            ) //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.greenAccent[100],
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.food_bank,
                                size: 50,
                              ),
                              tooltip: 'Scan',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'Mess pay',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Fill in the type food and you will be prompted for payment MPESA',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const QRViewExample(),
                                  ));
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('Scan')
                                    ],
                                  ),
                                ),
                              ),
                            ) //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
              ]),
            ],
          )),
    );
  }
}
