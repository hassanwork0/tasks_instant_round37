import 'dart:io';

String getInput(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!;
}
