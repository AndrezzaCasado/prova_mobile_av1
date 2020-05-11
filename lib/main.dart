import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(title: "FloatingButton", home: MainActivity()));

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  String msg = 'Clique no Botão';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Mobile'),
      ),
      body: bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _changeText,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
      ),
    );
  }

  bodyWidget() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              msg,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      msg = 'Mudou de Frase';
    });
  }
}