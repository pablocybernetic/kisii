import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseLoginPage extends StatefulWidget {
  @override
  _FirebaseLoginPageState createState() => _FirebaseLoginPageState();
}

class _FirebaseLoginPageState extends State<FirebaseLoginPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if (input!.isEmpty) {
                    return 'Please enter an Email';
                  }
                },
                onSaved: (input) => _email = input!,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                validator: (input) {
                  if (input!.length < 6) {
                    return 'Your password needs to be at least 6 characters';
                  }
                },
                onSaved: (input) => _password = input!,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              IconButton(
                onPressed: signIn,
                icon: const Icon(
                  Icons.login,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState!.validate()) {
      formState.save();
      try {
        User? user = (await FirebaseAuth.instance
                .signInWithEmailAndPassword(email: _email, password: _password))
            .user;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage(user: user)));
      } catch (e) {}
    }
  }
}

class HomePage extends StatelessWidget {
  final User? user;
  HomePage({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome ${user?.email}'),
      ),
    );
  }
}
