import 'package:flutter/material.dart';

class TNavBar extends StatelessWidget {
  const TNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('assets/images/kisii.png'),
      title: const Text(
        'Kisii university',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('You have new notification yet')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Profile',
          onPressed: () {
            // Navigator.push(
            //   context,
            // MaterialPageRoute(builder: (context) => const Login()),
            // );
          },
        ),
      ],
      flexibleSpace: const FlexibleSpaceBar(),
    );
  }
}
