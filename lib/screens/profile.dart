import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(146, 206, 230, 1),
          elevation: 0,
          centerTitle: true,
          title: const Text('Account Info'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.black),
              tooltip: 'Profile',
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          color: Color.fromARGB(255, 84, 236, 203),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(146, 206, 230, 1),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Peter Gitau",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Georgia'),
                        ),
                      ),
                    ),
                    // Center(
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     child: Image.asset(
                    //       'assets/images/peter.jpeg',
                    //       fit: BoxFit.cover,
                    //       height: 70.0,
                    //       width: 70.0,
                    //     ),
                    //   ),
                    // ),
                    Container(
                      width: 150,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.school,
                        color: Colors.black,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset("assets/images/peter.jpeg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("Academics"),
                      Text("IN16/00013/19"),
                      Text("No messages"),
                    ]),
              ),
              Container(
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 49, 140, 243).withOpacity(0.2),
                      const Color.fromARGB(255, 11, 9, 128).withOpacity(0.4)
                    ],
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Student Information",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Compus",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Faculty",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                'Department',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Course",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Year of Study",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Main Compus",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Information Science",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Computing Sciences",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "Software Engineering",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Text(
                                "4.2",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
