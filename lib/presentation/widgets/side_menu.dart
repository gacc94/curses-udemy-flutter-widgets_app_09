import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app_09/config/menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late int navDestination;

  @override
  void initState() {
    super.initState();
    navDestination = 1;
  }

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    final theme = Theme.of(context).colorScheme;
    return NavigationDrawer(
      backgroundColor: theme.surfaceContainer,
      selectedIndex: navDestination,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(25, hasNotch ? 0 : 20, 16, 10),
          child: Text(
            'Main',
            style: TextStyle(
              color: theme.onSurface,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ...menuItems
            .sublist(0, 3)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),

        const Divider(),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 10, 16, 10),
          child: Text(
            'More Options',
            style: TextStyle(
              color: theme.onSurface,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...menuItems
            .sublist(3)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
      onDestinationSelected: (value) {
        setState(() {
          navDestination = value;
        });
        context.push(menuItems[value].link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
    );
  }
}
