import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Generos Musicales',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Inicio',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
            },
          ),
          ListTile(
            title: const Text(
              'Generos Musicales',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              context.go('/mge');
            },
          ),
          ListTile(
            title: const Text(
              'Musica Pop',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              context.go('/pop');
            },
          ),
        ],
      ),
    );
  }
}
