import 'package:flutter/material.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: Center(
            child: Text('Retomada - Menu',
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
            )
            ),
          ),          
        ),
        ListTile(
          title: const Text("Home"),
          onTap: (){
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          title: const Text("Sobre"),
          onTap: (){
            Navigator.pushNamed(context, "/about");
          },
        ),
      ],
    );
  }
}