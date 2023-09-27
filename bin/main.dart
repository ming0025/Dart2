import 'dart:io';
import '../lib/lucky.dart';

void main(List<String> args) {
  for (String name in args) {
    String newName =
        name[0].toUpperCase() + name.substring(1).toLowerCase();
    final lucky = Lucky();
    // "Hello <name>. Your lucky number is <integer>"
    print('Hello $newName. Your lucky number is ${lucky.luckyNumber}');
  }
}
