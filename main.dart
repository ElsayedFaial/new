// import 'package:flutter/material.dart';
// import 'screens/home/home_screen.dart';
// import 'screens/cart/cart_screen.dart';
// import 'screens/favorite/favorite_screen.dart';
// import 'screens/profile/profile_screen.dart';



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Grocery App',
//       theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),

//       // تحديد الصفحة اللي يبدأ منها التطبيق
//       initialRoute: '/',

//       // تعريف المسارات (الأسماء اللي بنستخدمها في Navigator.pushNamed)
//       routes: {
//         '/': (context) => const HomeScreen(),
//         '/cart': (context) => const CartScreen(),
//         '/favorite': (context) => const FavoriteScreen(),
//         '/profile': (context) => const ProfileScreen(),
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/favorite/favorite_screen.dart';
import 'screens/profile/profile_screen.dart';

import 'screens/products_file/fruits_screen.dart';
import 'screens/products_file/vegetables_screen.dart';
import 'screens/products_file/spices_screen.dart';
import 'screens/products_file/bakery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
        '/favorite': (context) => const FavoriteScreen(),
        '/profile': (context) => const ProfileScreen(),

        // ✅ إضافة صفحات الكاتيجوري
        '/fruits': (context) => const FruitsScreen(),
        '/vegetables': (context) => const VegetablesScreen(),
        '/spices': (context) => const SpicesScreen(),
        '/bakery': (context) => const BakeryScreen(),
      },
    );
  }
}
