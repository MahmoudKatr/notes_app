import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width, // Full width
        height: 55, // Fixed height
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24, // Height 20
                  width: 24, // Width 20
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18, // Font size 18
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
        ),
      ),
    );
  }
}
