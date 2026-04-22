import 'package:flutter/material.dart';
// تأكد من مسار الـ product_card عندك، غالباً هو في مجلد widgets
import 'package:flutter_project_team/widgets/product_card.dart'; 

class SpicesScreen extends StatelessWidget {
  const SpicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. الـ AppBar نفس اللي في الهوم
      appBar: AppBar(
        title: const Text("Spices"),
        backgroundColor: Colors.orange, // تقدر تغير اللون حسب رغبتك
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),

      // 2. محتوى الصفحة (6 كاردات)
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // كارتين في كل صف
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8, // عشان تظبط طول الكارت
          ),
          itemCount: 6, // الـ 6 كاردات اللي طلبتهم
          itemBuilder: (context, index) {
            return const ProductCard(
              // هنا حط بيانات تجريبية أو غيرها حسب الصور اللي عندك
              title: "Fresh Veggie",
              image: "assets/images/vegetables.jfif",
              price: "20 EGP",
            );
          },
        ),
      ),

      // 3. الـ BottomNavigationBar (نفس اللي في الهوم)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}