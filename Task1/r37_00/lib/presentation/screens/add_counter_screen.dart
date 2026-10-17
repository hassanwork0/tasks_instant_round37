import 'package:flutter/material.dart';
import 'package:r37_00/data/source.dart';
import 'package:r37_00/entity/counter.dart';
import 'package:r37_00/presentation/screens/home_screen.dart';

class AddCounterScreen extends StatefulWidget {
  const AddCounterScreen({super.key});

  @override
  State<AddCounterScreen> createState() => _AddCounterScreenState();
}

class _AddCounterScreenState extends State<AddCounterScreen> {
  String selectedColor = 'Red';
  final TextEditingController nameController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  final TextEditingController incController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Counter Name",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),

      //2 text fields 1 for init value 1 for increment and 1 combo box contains 7 colors
      body: Column(
        children: [
          TextField(
            controller: valueController,
            decoration: InputDecoration(
              hintText: "Initial Value",
              hintStyle: TextStyle(color: Colors.black),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: incController,
            decoration: InputDecoration(
              hintText: "Increment Value",
              hintStyle: TextStyle(color: Colors.black),
            ),
            keyboardType: TextInputType.number,
          ),
          DropdownButton<String>(
            items:
                <String>[
                  'Red',
                  'Green',
                  'Blue',
                  'Yellow',
                  'Orange',
                  'Purple',
                  'Pink',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            value: selectedColor,
            onChanged: (value) {
              setState(() {
                selectedColor = value!;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DataSource().addCounter(
            Counter(
              name: nameController.text,
              value: int.parse(valueController.text),
              incremnt: int.parse(incController.text),
              color: getColor(selectedColor),
            ),
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: Text("✔"),
      ),
    );
  }

  //switch case for every String color return the color
  Color? getColor(String color) {
    switch (color) {
      case 'Red':
        return Colors.red;
      case 'Green':
        return Colors.green;
      case 'Blue':
        return Colors.blue;
      case 'Yellow':
        return Colors.yellow;
      case 'Orange':
        return Colors.orange;
      case 'Purple':
        return Colors.purple;
      case 'Pink':
        return Colors.pink;
      default:
        return null;
    }
  }
}
