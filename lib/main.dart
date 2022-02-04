import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapp/controllers/menu_controller.dart';
import 'package:webapp/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
          title: 'Bookstore',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.deepPurple[400],
          ),
          home: const Dashboard()),
    );
  }
}
