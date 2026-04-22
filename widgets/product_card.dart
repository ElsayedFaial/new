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


// 
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String price;
  final String image;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.asset(widget.image, fit: BoxFit.cover),
          ),

          const SizedBox(height: 5),

          Text(widget.title),

          Text("\$${widget.price}"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// ❤️ Favorite
              IconButton(
                onPressed: () {
                  setState(() {
                    isFav = !isFav;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isFav
                            ? "Added to Favorite ❤️"
                            : "Removed from Favorite ❌",
                      ),
                    ),
                  );
                },
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: isFav ? Colors.red : null,
                ),
              ),

              /// 🛒 Cart
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Added to Cart 🛒"),
                    ),
                  );
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