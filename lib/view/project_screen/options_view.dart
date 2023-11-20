import 'package:flutter/material.dart';

class OptionsView extends StatelessWidget {
  final List<String> opetions;
  const OptionsView({super.key, required this.opetions});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: opetions.map((category) {
          return OptionsIteams(name: category);
        }).toList(),
      ),
    );
  }
}

class OptionsIteams extends StatelessWidget {
  final String name;

  const OptionsIteams({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      // Adjust the width as needed
      margin: const EdgeInsets.all(8.0),
      // Add some spacing between categories
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          name,
        ),
      ),
    );
  }
}