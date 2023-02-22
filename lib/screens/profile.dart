import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late Future<Map<String, dynamic>> _userData;

  @override
  void initState() {
    super.initState();
    _userData = fetchUserData();
  }

  Future<Map<String, dynamic>> fetchUserData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Persional info:',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[300])),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 16),
          Text('Address:',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[300])),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 16),
          Text('Company:',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[300])),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8),
          Container(
            height: 16,
            width: double.infinity,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

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
          color: const Color.fromARGB(255, 84, 236, 203),
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
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: FutureBuilder<Map<String, dynamic>>(
                        future: _userData,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final userData = snapshot.data;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Persional info:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Name: ${userData!['name']}'),
                                Text('Username: ${userData['username']}'),
                                Text('Email: ${userData['email']}'),
                                Text('Phone: ${userData['phone']}'),
                                Text('Website: ${userData['website']}'),
                                const SizedBox(height: 16),
                                const Text('Address:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                    'Street: ${userData['address']['street']}'),
                                Text('Suite: ${userData['address']['suite']}'),
                                Text('City: ${userData['address']['city']}'),
                                Text(
                                    'Zipcode: ${userData['address']['zipcode']}'),
                                const SizedBox(height: 16),
                                const Text('Company:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Name: ${userData['company']['name']}'),
                                Text(
                                    'Catchphrase: ${userData['company']['catchPhrase']}'),
                                Text('BS: ${userData['company']['bs']}'),
                              ],
                            );
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          } else {
                            return _buildShimmerEffect();
                            // return const Center(
                            //     child: CircularProgressIndicator());
                          }
                        },
                      ),
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
