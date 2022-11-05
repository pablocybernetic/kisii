import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
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
          title: Text('Account Info'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.black),
              tooltip: 'Profile',
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
            child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(146, 206, 230, 1),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/images/peter.jpeg',
                        fit: BoxFit.cover,
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
