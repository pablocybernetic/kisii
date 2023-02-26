import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

import '../components/globals.dart';

class FeeStatusPage extends StatefulWidget {
  @override
  _FeeStatusPageState createState() => _FeeStatusPageState();
}

class _FeeStatusPageState extends State<FeeStatusPage> {
  // Sample data for the fee statement
  // List<Map<String, dynamic>> _feeStatementData = [
  //   {
  //     'description': 'Tuition fee',
  //     'amount': 1500,
  //   },
  //   {
  //     'description': 'Lab fee',
  //     'amount': 200,
  //   },
  //   {
  //     'description': 'Library fee',
  //     'amount': 100,
  //   },
  //   {
  //     'description': 'Sports fee',
  //     'amount': 50,
  //   },
  //   {
  //     'description': 'Total',
  //     'amount': 1850,
  //   },
  // ];

  late Future<Map<String, dynamic>> _studentFee;

  @override
  void initState() {
    super.initState();
    _studentFee = fetchFeeData();
  }

  Future<void> fetchData() async {
    final data = await fetchFeeData();
    setState(() {
      _studentFee = data as Future<Map<String, dynamic>>;
    });
  }

  Future<Map<String, dynamic>> fetchFeeData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            Container(
              height: 120,
              width: 600,
              // padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.green.shade400.withOpacity(0.5),
                    Colors.green.shade600.withOpacity(0.5),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                      child: Text(
                    'Fee Statement',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  )),
                ],
              ),
            ),
            // Expanded(

            // child: ListView.builder(
            //   itemCount: _feeStatementData.length,
            //   itemBuilder: (context, index) {
            //     final data = _feeStatementData[index];
            //     return ListTile(
            //       subtitle: Text("data"),
            //       title: Text(data['title']),
            //       trailing: Text('\$${data['id']}'),
            //     );
            //   },
            // ),

            // ),
            Container(
              // height: 200,
              width: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 49, 140, 243).withOpacity(0.2),
                    const Color.fromARGB(255, 11, 9, 128).withOpacity(0.4)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: " + myGlobalVar,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'Admin number: ' + admnNo,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Center(
                          child: const Text(
                            'Fee Statement',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.green.shade300.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(7)),
                          padding: const EdgeInsets.all(16),
                          child: FutureBuilder<Map<String, dynamic>>(
                            future: _studentFee,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final userData = snapshot.data;
                                return DefaultTextStyle(
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                  child: Table(
                                    columnWidths: const <int, TableColumnWidth>{
                                      0: IntrinsicColumnWidth(),
                                      1: FlexColumnWidth(),
                                    },
                                    children: [
                                      _buildTableRow('Fee  Info', ''),
                                      _buildTableRow('Name', userData!['name']),
                                      _buildTableRow(
                                          'Adm no.', userData['username']),
                                      _buildTableRow(
                                          'Level of study', userData['email']),
                                      _buildTableRow(
                                          'Phone', userData['phone']),
                                      _buildTableRow(
                                          'Semester', userData['website']),
                                      _buildTableRow('Invoice', 'N/L'),
                                      _buildTableRow('Street',
                                          userData['address']['street']),
                                      _buildTableRow('Suite',
                                          userData['address']['suite']),
                                      _buildTableRow('Pay penalties',
                                          userData['address']['city']),
                                      _buildTableRow('Pay deadlines',
                                          userData['address']['zipcode']),
                                      _buildTableRow('bursaries', ''),
                                      _buildTableRow(
                                          'Name', userData['company']['name']),
                                      _buildTableRow('Helb',
                                          userData['company']['catchPhrase']),
                                      _buildTableRow('Fee Balance',
                                          userData['company']['bs']),
                                    ],
                                  ),
                                );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              } else {
                                // return _buildShimmerEffect();
                                return Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor:
                                      Color.fromARGB(255, 48, 43, 43),
                                  enabled: true,
                                  child: Column(
                                    children: List.generate(
                                      10,
                                      (index) => Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white,
                                                ),
                                                height: 20,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                              ),
                                              Container(
                                                height: 20,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerEffect() {
    return SizedBox(
      height: 15,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.white,
        ),
        period: Duration(milliseconds: 800),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TableCell(
          child: Text(value),
        ),
      ],
    );
  }
}
