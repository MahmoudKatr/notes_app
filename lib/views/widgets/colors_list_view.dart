import 'package:flutter/material.dart';

class ColorsShape extends StatelessWidget {
  const ColorsShape({super.key, required this.isActive, required this.colors});
  final bool isActive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: colors,
            ),
          )
        : CircleAvatar(
            radius: 33,
            backgroundColor: colors,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedColor = 0;
  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xff8F3E97),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
    Color(0xffF9A03F),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            GestureDetector(
              onTap: () {
                selectedColor = index;
                setState(() {});
              },
              child: ColorsShape(
                colors: colors[index],
                isActive: selectedColor == index,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
