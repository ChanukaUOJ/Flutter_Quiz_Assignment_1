import 'package:flutter/material.dart';

class TextSplit extends StatelessWidget {
  final int collectionIndex;
  final List<String> textCollection;
  const TextSplit(this.textCollection, this.collectionIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200.0),
      child: Text(
        textCollection[collectionIndex],
        style: const TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
