import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('About'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('asset/images/Yoi.jpg'),
              Text('Created and modified By : Yohanes Mahardika Arya'),
              Text('NIM :2315103008'),
              SizedBox(height: 10,),
              Text('    .\n   ":"\n ___:____     |"\\/"|\n,' '        `.' '    \\  /\n|  O        \\___/  |\n~^~^~^~^~^~^'),
            ],
          ),
        ),
      ),
    );
  }
}

