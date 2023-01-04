import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zapatos/src/models/models.dart';
import 'package:zapatos/src/pages/pages.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> ZapatoModel()),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zapatos App',
      home: ZapatoPage()
    );
  }
}