// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final String title;
//   final String price;

//   const ProductCard({
//     super.key,
//     required this.title,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           const Expanded(child: Placeholder()),

//           Text(title),

//           Text("\$$price"),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/favorite');
//                 },
//                 icon: const Icon(Icons.favorite_border),
//               ),

//               IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/cart');
//                 },
//                 icon: const Icon(Icons.shopping_cart),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image; // 👈 ضفنا الصورة

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          /// 🖼️ الصورة بدل Placeholder
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 5),

          Text(title),

          Text("\$$price"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorite');
                },
                icon: const Icon(Icons.favorite_border),
              ),

              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          )
        ],
      ),
    );
  }
}

