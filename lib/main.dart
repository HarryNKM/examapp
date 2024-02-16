
import 'package:cartapp/screens/cart/cart_screen.dart';
import 'package:cartapp/screens/detail/detail_screen.dart';
import 'package:cartapp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        'detail': (context)=> const DetailScreen(),
        'cart': (context)=> const CartScreen(),
      },
    ),
  );
}
