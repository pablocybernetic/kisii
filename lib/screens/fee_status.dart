import 'package:flutter/material.dart';

class FeeStatusPage extends StatefulWidget {
  @override
  _FeeStatusPageState createState() => _FeeStatusPageState();
}

class _FeeStatusPageState extends State<FeeStatusPage> {
  // Sample data for the fee statement
  List<Map<String, dynamic>> _feeStatementData = [
    {
      'description': 'Tuition fee',
      'amount': 1500,
    },
    {
      'description': 'Lab fee',
      'amount': 200,
    },
    {
      'description': 'Library fee',
      'amount': 100,
    },
    {
      'description': 'Sports fee',
      'amount': 50,
    },
    {
      'description': 'Total',
      'amount': 1850,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee Statement'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: John Doe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Roll No: 123456',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Fee Statement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: _feeStatementData.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> feeData = _feeStatementData[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            feeData['description'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '${feeData['amount']} Ksh',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
