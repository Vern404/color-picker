import 'package:flutter/material.dart';
import 'package:navflutter/list_item.dart';
import 'package:navflutter/shades_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void navigateToShadePageStatic(
      BuildContext context,
      MaterialAccentColor color,
      ){
    Navigator.of(context).pushNamed(
      '/shades', //name of route
      arguments: color,
    );
  }

  void navigateColor(
      BuildContext context,
      ){
    Navigator.of(context).pushNamed('/color');
  }

  // void navigateToShadePage(BuildContext context, MaterialAccentColor color){
  //   Navigator.push(context,
  //     MaterialPageRoute(
  //         builder: (BuildContext context){
  //           return ShadesPage(color: color);
  //         }),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Colors')),
        body:
        ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index, ){

            return GestureDetector(
              onTap: (){
                navigateToShadePageStatic(
                    context,
                    Colors.accents.elementAt(index),
                );},
                child:ListItem(
                    color: Colors.accents.elementAt(index)
                ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateColor(context);
        },
          backgroundColor: Colors.black,
          child: const Icon(Icons.colorize),
    ),
    );
  }
}