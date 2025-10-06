import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app_09/config/menu/menu_item.dart';
import 'package:widgets_app_09/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final items = menuItems;

    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final menuItem = items[index];
        return _CustomTile(
          title: menuItem.title,
          icon: menuItem.icon,
          link: menuItem.link,
          subTitle: menuItem.subTitle,
          key: Key(menuItem.title),
        );
      },
    );
  }
}

//* CUSTOM TILE
class _CustomTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String link;
  final String subTitle;

  const _CustomTile({
    required this.title,
    required this.icon,
    required this.link,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.primary;
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: theme, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle, style: TextStyle(color: theme)),
      leading: Icon(icon, size: 30, color: theme),
      trailing: Icon(Icons.arrow_forward_ios, color: theme),
      onTap: () {
        context.push(link);
        // GoRouter.of(context).push(link);
      },
    );
  }
}
