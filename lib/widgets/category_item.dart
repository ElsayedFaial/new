

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;

  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cart'); // مؤقت
      },

      child: Container(
        width: 90,
        margin: const EdgeInsets.only(right: 10),

        child: Column(
          children: [
            /// 🖼️ الصورة
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 5),

            /// 📝 الاسم
            Text(
              title,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}



