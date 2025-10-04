import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final String link;
  final String subTitle;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.link,
    required this.subTitle,
  });
}

final menuItems = [
  MenuItem(
    title: 'Buttons',
    icon: Icons.smart_button_outlined,
    link: '/buttons',
    subTitle: 'Buttons',
  ),
  MenuItem(
    title: 'Cards',
    icon: Icons.card_giftcard_outlined,
    link: '/cards',
    subTitle: 'Cards',
  ),
];
