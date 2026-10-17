import 'package:flutter/material.dart';
import 'package:r37_00/entity/counter.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, required this.counter});

  final Counter counter;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late Counter stateCounter = widget.counter;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: stateCounter.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.counter.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      stateCounter = stateCounter.copyWith(
                        value: stateCounter.value + stateCounter.incremnt,
                      );
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                Text("${stateCounter.value}"),
                IconButton(
                  onPressed: () {
                    setState(() {
                      stateCounter = stateCounter.copyWith(
                        value: stateCounter.value - stateCounter.incremnt,
                      );
                    });
                  },
                  icon: Icon(Icons.minimize),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
