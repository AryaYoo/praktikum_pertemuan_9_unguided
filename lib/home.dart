import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/DataPekerjaPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> _pages = [1]; 

  void addPage() {
    setState(() {
      _pages.add(_pages.length + 1);
    });
  }

  void deletePage() {
    setState(() {
      if (_pages.isNotEmpty) {
        _pages.removeLast();
      }
    });
  }

  void _openPageAbout(BuildContext context, {required bool fullscreenDialog}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => AboutPage(),
      ),
    );
  }

  void _openDataPekerja(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DataPekerjaPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Pekerja"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _openPageAbout(context, fullscreenDialog: true),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Pekerja ${_pages[index]}'),
            onTap: () {
              _openDataPekerja(context, index);
            },
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: addPage,
            tooltip: 'Add Pekerja',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: deletePage,
            tooltip: 'Remove Pekerja',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
