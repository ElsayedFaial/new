
import 'package:flutter/material.dart';
import 'package:flutter_project_team/widgets/category_item.dart';
import 'package:flutter_project_team/widgets/product_card.dart';

import 'package:flutter_project_team/screens/products_file/vegetables_screen.dart';
import 'package:flutter_project_team/screens/products_file/fruits_screen.dart';
import 'package:flutter_project_team/screens/products_file/spices_screen.dart';
import 'package:flutter_project_team/screens/products_file/bakery_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Elsayed",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "What do you need",
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 🔍 Search
              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),

              const SizedBox(height: 25),

              /// 🧾 Category Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BakeryScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              /// 🟢 Categories
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(
                      title: "Vegetables",
                      image: "assets/images/vegetables.jfif",
                      targetScreen: VegetablesScreen(),
                    ),
                    CategoryItem(
                      title: "Fruits",
                      image: "assets/images/fruits.jfif",
                      targetScreen: FruitsScreen(),
                    ),
                    CategoryItem(
                      title: "Spices",
                      image: "assets/images/spices.jfif",
                      targetScreen: SpicesScreen(),
                    ),
                    CategoryItem(
                      title: "Bakery",
                      image: "assets/images/bakery.jfif",
                      targetScreen: BakeryScreen(),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              /// 🧱 Products Grid
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
                children: const [
                  ProductCard(title: "Tomato", price: "2.79", image: "assets/images/tomato.jfif"),
                  ProductCard(title: "Banana", price: "1.00", image: "assets/images/banana.jfif"),
                  ProductCard(title: "Bread", price: "3.00", image: "assets/images/bread-2.jfif"),
                  ProductCard(title: "Pepper", price: "2.20", image: "assets/images/pepper.jfif"),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/favorite');
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Fav"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}