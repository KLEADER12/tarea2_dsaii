import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _text1Controller = TextEditingController();
  final _text2Controller = TextEditingController();

  String _concatenatedText = '';

  void _handleConcatenate() {
    String text1 = _text1Controller.text;
    String text2 = _text2Controller.text;
    setState(() {
      _concatenatedText = '$text1 $text2';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
                child: Container(
                  child: Center(
                    child: Text(_concatenatedText, style: const TextStyle(color: Colors.black87, fontSize: 30.0)),
                  ),
                )
            ),

            TextField(
              controller: _text1Controller,
              decoration: InputDecoration(
                hintText: 'inserte texto 1',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _text1Controller.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            TextField(
              controller: _text2Controller,
              decoration: InputDecoration(
                hintText: 'inserte texto 2',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _text2Controller.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            MaterialButton(
              onPressed: _handleConcatenate,
              color: Colors.black87,
              child: const Text('Concatenar', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 16.0),

          ],

        ),
      ),
    );
  }
}
