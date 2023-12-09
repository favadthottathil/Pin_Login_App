import 'package:flutter/material.dart';
import 'package:machine_test_rapidor/provider/provider.dart';

Widget numButton(int number, NumberProvider provider) {
  return TextButton(
    onPressed: () {
      provider.setString = number.toString();
    },
    child: Text(
      number.toString(),
      style: const TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
