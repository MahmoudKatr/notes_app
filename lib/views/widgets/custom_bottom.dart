import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Full width
      height: 55, // Fixed height
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black, // Text color
            fontSize: 18, // Font size 18
            fontWeight: FontWeight.bold, // Bold text
          ),
        ),
      ),
    );
  }
}
