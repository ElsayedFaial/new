

// import 'package:flutter/material.dart';

// class CategoryItem extends StatelessWidget {
//   final String title;
//   final String image;

//   const CategoryItem({
//     super.key,
//     required this.title,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, '/cart'); // مؤقت
//       },

//       child: Container(
//         width: 90,
//         margin: const EdgeInsets.only(right: 10),

//         child: Column(
//           children: [
//             /// 🖼️ الصورة
//             Container(
//               height: 70,
//               width: 70,
//               decoration: BoxDecoration(
//                 color: Colors.green.shade50,
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: AssetImage(image),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 5),

//             /// 📝 الاسم
//             Text(
//               title,
//               style: const TextStyle(fontSize: 12),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';



// class CategoryItem extends StatelessWidget {
//   final String image;
//   final String title;
//   final Widget targetScreen; // هذا المتغير لاستقبال الصفحة المراد الذهاب إليها

//   const CategoryItem({
//     super.key,
//     required this.image,
//     required this.title,
//     required this.targetScreen,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // الكود المسؤول عن الانتقال للصفحة
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => targetScreen),
//         );
//       },
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.grey[100],
//             ),
//             child: Image.asset(
//               image,
//               width: 60,
//               height: 60,
//               fit: BoxFit.contain,
//               // في حال لم تظهر الصورة، نضع أيقونة افتراضية
//               errorBuilder: (context, error, stackTrace) => 
//                   const Icon(Icons.category, size: 40),
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 14, 
//               fontWeight: FontWeight.w500,
//               color: Colors.black87,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// 

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String title;
  final Widget targetScreen;

  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8), // 👈 حل المشكلة
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetScreen),
          );
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
              child: Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}