import 'package:flutter/material.dart';
import 'package:r37_00/data/source.dart';
import 'package:r37_00/presentation/screens/add_counter_screen.dart';
import 'package:r37_00/presentation/widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("All", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: DataSource.counters.length,
        itemBuilder: (context, index) =>
            CounterWidget(counter: DataSource.counters[index]),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCounterScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
