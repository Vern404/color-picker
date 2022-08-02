import 'package:flutter/material.dart';
import 'package:navflutter/list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShadesCode = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shades'),
      ),
      body: ListView.builder(
        itemCount: accentShadesCode.length,
        itemBuilder: (BuildContext context, int index){
          return ListItem(
            color: accentShadesCode.elementAt(index)
          );
        }
      )
    );
  }
}

