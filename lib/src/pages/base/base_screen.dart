import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/cart/cart_tab.dart';
import 'package:greengrocer/src/pages/home/home_tab.dart';
import 'package:greengrocer/src/pages/orders/orders_tab.dart';
import 'package:greengrocer/src/pages/profile/profile_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          // Home
          HomeTab(),

          // Carrinho
          CartTab(),

          // Produtos / Pedidos
          OrdersTab(),

          // Perfil
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 700),
              curve: Curves.ease,
            );
          });
        },
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
