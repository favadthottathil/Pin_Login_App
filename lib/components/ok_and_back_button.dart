import 'package:flutter/material.dart';
import 'package:machine_test_rapidor/provider/provider.dart';

Row showOkandbackButton(NumberProvider provider, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: TextButton(
          onPressed: () => provider.delete(),
          child: const Text(
            'X',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          if (provider.enteredString == '1234') {
            provider.showerrorr = false;

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('user verification success'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context), child: const Text('ok'))
                ],
              ),
            );
          } else {
            provider.showerrorr = true;

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please enter valid number'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: const Text(
          'ok',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}
