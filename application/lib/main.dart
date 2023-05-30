import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AthkarAfterPrayer.dart';
import 'Page1.dart';
import 'AthkarMorning.dart';
import 'AthkarNight.dart';
import 'ProviderModel.dart';
import 'SplashScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProviderModel(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Splash Screen',
      debugShowCheckedModeBanner: false,
      home: SplashScreen() ,

    );
  }
}
