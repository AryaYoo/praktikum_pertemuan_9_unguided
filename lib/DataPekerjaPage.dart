import 'package:flutter/material.dart';
import 'package:flutter_application_1/HobbyPage.dart';
import 'package:flutter_application_1/NamaPage.dart';
import 'package:flutter_application_1/sexPage.dart';
import 'package:flutter_application_1/AlamatPage.dart';

class DataPekerjaPage extends StatefulWidget {
  @override
  _DataPekerjaPageState createState() => _DataPekerjaPageState();
}

class _DataPekerjaPageState extends State<DataPekerjaPage> {
  String _drinkFavorite = "...";
  String _nama = "...";
  String _Sex = "...";
  String _Alamat = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Data Pekerja"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama: $_nama',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red), // Mengatur warna latar belakang
                ),
                onPressed: () {
                  _openNama(context, fullscreenDialog: false);
                },
                child: Text('Change Nama'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Jenis Kelamin: $_Sex',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red), // Mengatur warna latar belakang
                ),
                onPressed: () {
                  _openSex(context, fullscreenDialog: false);
                },
                child: Text('Change Sex'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Alamat: $_Alamat',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red), // Mengatur warna latar belakang
                ),
                onPressed: () {
                  _openAlamat(context, fullscreenDialog: false);
                },
                child: Text('Change Alamat'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hobby: $_drinkFavorite',
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red), // Mengatur warna latar belakang
                ),
                onPressed: () {
                  _openHobby(context, fullscreenDialog: false);
                },
                child: Text('Change Hobby'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openHobby(BuildContext context,
      {required bool fullscreenDialog}) async {
    final String _favoriteResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => HobbyPage(
          radioGroupValue: 0,
        ),
      ),
    );
    setState(() {
      _drinkFavorite = _favoriteResponse;
    });
  }

  void _openNama(BuildContext context, {required bool fullscreenDialog}) async {
    final String _namaResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => NamaPage(
          radioGroupValue: 0,
        ),
      ),
    );
    setState(() {
      _nama = _namaResponse;
    });
  }

  void _openSex(BuildContext context, {required bool fullscreenDialog}) async {
    final String _SexResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => SexPage(
          radioGroupValue: 0,
        ),
      ),
    );
    setState(() {
      _Sex = _SexResponse;
    });
  }

  void _openAlamat(BuildContext context,
      {required bool fullscreenDialog}) async {
    final String _AlamatResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => AlamatPage(
          radioGroupValue: 0,
        ),
      ),
    );
    setState(() {
      _Alamat = _AlamatResponse;
    });
  }
}
