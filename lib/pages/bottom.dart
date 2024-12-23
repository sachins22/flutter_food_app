import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/Home.dart';
import 'package:my_app/pages/booking.dart';
import 'package:my_app/pages/cart.dart';
import 'package:my_app/pages/profile.dart';

class BottomPages extends StatefulWidget {
  const BottomPages({super.key});

  @override
  State<BottomPages> createState() => _BottomPagesState();
}

class _BottomPagesState extends State<BottomPages> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;
  late HomePage home;
  late CartPages cart;
  late ProfilePages profile;
  late BookingPage booking;

  @override
  void initState() {
    home = HomePage();
    cart = CartPages();
    profile = ProfilePages();
    booking = BookingPage();
    pages = [home, cart, booking, profile];
    currentPage = home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.white,
        color: const Color(0xffff734c),
        height: 65,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            // currentPage = pages[index];
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
