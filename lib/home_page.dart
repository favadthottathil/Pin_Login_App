import 'package:flutter/material.dart';
import 'package:machine_test_rapidor/components/pin_display.dart';
import 'package:machine_test_rapidor/components/num_button.dart';
import 'package:machine_test_rapidor/components/ok_and_back_button.dart';
import 'package:machine_test_rapidor/provider/provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access Screen Size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // For Show App Bar
      appBar: AppBar(
        title: const Text('Pin Login'),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
        centerTitle: true,
      ),

      // Access Provder
      body: Consumer<NumberProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 100,

                  // Pin Display
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final enteredString = provider.enteredString;

                      return pinDisplay(index, enteredString,provider);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.6,

                // Gridview builder for showing number pad
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) => numButton(index + 1, provider), // Number show widget
                ),
              ),
              showOkandbackButton(provider, context)
            ],
          );
        },
      ),
    );
  }
}
