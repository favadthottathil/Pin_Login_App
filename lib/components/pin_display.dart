import 'package:flutter/material.dart';
import 'package:machine_test_rapidor/provider/provider.dart';

Padding pinDisplay(int index, String enteredString, NumberProvider provider) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          color: provider.showError ? Colors.red : Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              width: 60,
              height: 60,
              color: Colors.teal,
              child: Center(
                child: Text(
                  index < enteredString.length ? enteredString[index] : '',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
