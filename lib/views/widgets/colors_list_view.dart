import 'package:flutter/material.dart';

class ColorsShape extends StatelessWidget {
  const ColorsShape({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Row(
          children: [
            ColorsShape(),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
