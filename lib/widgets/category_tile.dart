import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String image;
  final String name;

  const CategoryTile({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(60),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                width: 120,
                height: 120,
                color: const Color.fromRGBO(0, 0, 0, 0.3), // 40% opacity black
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                shadows: [Shadow(blurRadius: 4, offset: Offset(1, 1))],
              ),
            ),
          ],
        ),
    );
  }
}
