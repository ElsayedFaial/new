

import 'package:flutter/material.dart';
import 'package:flutter_project_team/widgets/category_item.dart';
import 'package:flutter_project_team/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // قائمة المنتجات اللي هنعرضها
  final List<Map<String, String>> products = const [
    {"title": "Tomato", "price": "2.79", "image": "assets/images/tomato.jfif"},
    {"title": "Banana", "price": "1.00", "image": "assets/images/banana.jfif"},
    {"title": "Bread", "price": "3.00", "image": "assets/images/bread-2.jfif"},
    {"title": "Pepper", "price": "2.20", "image": "assets/images/pepper.jfif"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Smith", 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              "What do you need",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/favorite');
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Fav",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for items here",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/cart'),
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              
              // التعديل هنا: شيلنا الـ const واستخدمنا ListView
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(
                      title: "Vegetables",
                      image: "assets/images/vegetables.jfif",
                    ),
                    CategoryItem(
                      title: "Fruits",
                      image: "assets/images/fruits.jfif",
                    ),
                    CategoryItem(
                      title: "Spices",
                      image: "assets/images/spices.jfif",
                    ),
                    CategoryItem(
                      title: "Bakery",
                      image: "assets/images/bakery.jfif",
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 25),
              const Text(
                "Find by Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    title: products[index]['title']!,
                    price: products[index]['price']!,
                    image: products[index]['image']!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}