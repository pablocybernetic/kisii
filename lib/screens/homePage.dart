import 'package:flutter/material.dart';
import 'package:kisii/screens/fee_status.dart';
import 'package:kisii/screens/login.dart';
import 'package:kisii/screens/pay.dart';
import 'package:kisii/screens/profile.dart';
import 'package:kisii/screens/scanner.dart';
import 'package:http/http.dart' as http;
import 'pay.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(146, 206, 230, 1),
        elevation: 0.0,
        centerTitle: true,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            'assets/images/peter.jpeg',
            fit: BoxFit.cover,
            height: 40.0,
            width: 40.0,
          ),
        ),
        title: Image.asset(
          'assets/images/kisii.png',
          height: 60,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('You have new notification yet')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
        flexibleSpace: const FlexibleSpaceBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(146, 206, 230, 1),
        ),
        child: Column(
          children: [
            const SizedBox(height: 15.0),
            const Text(
              'Kisii university',
              style: TextStyle(
                  fontFamily: 'Serif',
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15.0),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 49, 140, 243).withOpacity(0.2),
                  const Color.fromARGB(255, 11, 9, 128).withOpacity(0.4)
                ]),
              ),
              // margin: const EdgeInsets.all(30.0),
              child: Container(
                margin: const EdgeInsets.all(30.0),

                //             decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                //   color: Colors.white,
                //   boxShadow: [
                //     BoxShadow(color: Colors.green, spreadRadius: 3),
                //   ],
                // ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  // color: Color.fromARGB(255, 162, 199, 255)
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                        child: Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                          child: SizedBox(
                            width: 200,
                            height: 250,
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
                                            builder: (context) => LoginPage()),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                  Text(
                                    'Facility Access',
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
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const QRViewExample(),
                                        ));
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
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
                            height: 250,
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
                                            builder: (context) => LoginPage()),
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
                                    'View your account details here',
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
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => Profile(),
                                        ));
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: const [
                                            Icon(Icons.info),
                                            Text('View')
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
                            height: 250,
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
                                            builder: (context) => LoginPage()),
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
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => FeeStatusPage(),
                                        ));
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: const [
                                            Icon(Icons.wallet),
                                            Text('Chec')
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
                            height: 250,
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
                                            builder: (context) => const Pay()),
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
                                    'Fill in the type food for payment',
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
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => const Pay(),
                                        ));
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: const [
                                            Icon(Icons.payment),
                                            Text('Pay')
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
