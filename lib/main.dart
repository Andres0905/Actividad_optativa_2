import 'package:flutter/material.dart';
import 'src/routes/my_app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'La Musica',
      routerConfig: MyAppRouter.router,
    );
  }
}
