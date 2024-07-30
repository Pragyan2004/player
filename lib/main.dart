import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/modules/playlist_provider.dart';
import 'package:untitled1/screen/homepage.dart';
import 'package:untitled1/themes/lighttheme.dart';
import 'package:untitled1/themes/theme_provider.dart';
void main(){
  runApp(
      MultiProvider(
          providers: [
        ChangeNotifierProvider(create: (context)=>ThemeProvider()),
        ChangeNotifierProvider(create: (context)=>PlaylistProvider()),
      ],
        child: const MyApp(),
      ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme:Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
