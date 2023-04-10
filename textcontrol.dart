import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback _handler;
  const TextControl(this._handler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: ElevatedButton(
          onPressed: _handler,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 29, 0, 0),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0))),
          child: const Text("Change Text"),
        ),
      ),
    );
  }
}
