import 'package:flutter/material.dart';

class Counter {
  final String name;
  final int value;
  final int incremnt;
  final Color? color;

  Counter({
    required this.name,
    required this.value,
    required this.incremnt,
    this.color,
  });

  Counter copyWith({String? name, int? value, int? incremnt, Color? color}) {
    return Counter(
      name: name ?? this.name,
      value: value ?? this.value,
      incremnt: incremnt ?? this.incremnt,
      color: color ?? this.color,
    );
  }
}
