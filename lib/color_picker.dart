import 'package:flutter/material.dart';
import 'package:navflutter/list_item.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  double redValue = 0;
  double blueValue = 0;
  double greenValue = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Color Picker')),
      body: Column(
        children:<Widget> [
          Slider(
            value: redValue,
            max: 255,
            divisions: 255,
            label: redValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                redValue = value;
              });
            },
          ),
          Slider(
            value: blueValue,
            max: 255,
            divisions: 255,
            label: blueValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                blueValue = value;
              });
            },
          ),
          Slider(
            value: greenValue,
            max: 255,
            divisions: 255,
            label: greenValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                greenValue = value;
              });
            },
          ),
          Container(
            margin: EdgeInsets.all(60),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(redValue.toInt(),greenValue.toInt(), blueValue.toInt(), 1),
                  shape: BoxShape.circle,
          ),
          ),
        floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.add_a_photo),
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MyHomePage();
              })),
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text ('Color:'),
                    content: Row(
                      children: [
                        const Text('The color you picked is :'),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(_currentSliderRed.toInt(), _currentSliderGreen.toInt(), _currentSliderBlue.toInt(), 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ), actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Okay'),
                      child: const Text('Okay'),)
                  ],
                  ),
              ),
            },
          ),
        ],
      ),
    ),
    );
  }
}