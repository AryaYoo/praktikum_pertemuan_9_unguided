import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String?_email;
  String? _pass;

  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Admin"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: 190,
                padding: EdgeInsets.only(top: 40),
                child: Image.asset('asset/images/ittp_logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                onChanged: (text) {
                  _email = text;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                onChanged: (text) {
                  _pass = text;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 33, 33), borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (_email == "as" && _pass == "asd") {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      _errorMessage = "Sualah";
                    }
                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
