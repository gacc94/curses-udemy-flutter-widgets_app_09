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
  MenuItem(
    title: 'Progress Indicators',
    icon: Icons.refresh_rounded,
    link: '/progress-indicators',
    subTitle: 'Progress Indicators',
  ),
  MenuItem(
    title: 'Snackbar',
    icon: Icons.notification_important,
    link: '/snackbar',
    subTitle: 'Snackbar',
  ),
  MenuItem(
    title: 'Animated Container',
    icon: Icons.animation_outlined,
    link: '/animated',
    subTitle: 'Animated Container',
  ),
  MenuItem(
    title: 'UI Control',
    icon: Icons.abc_outlined,
    link: '/ui-control',
    subTitle: 'UI Control',
  ),
  MenuItem(
    title: 'Infinite Scroll',
    icon: Icons.refresh_rounded,
    link: '/infinite-scroll',
    subTitle: 'Infinite Scroll',
  ),
];
