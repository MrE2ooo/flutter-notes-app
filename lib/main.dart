import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'YourNotes.dart';
import 'Model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Mymodel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: YourNotes(),
      ),
    );
  }
}
