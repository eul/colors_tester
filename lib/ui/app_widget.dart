import 'package:colors_tester/ui/colorful_screen_widget.dart';
import 'package:flutter/material.dart';

/// App Widget holder
class AppWidget extends StatelessWidget {

  /// Const constructor
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ColorfulScreenWidget(),
    );
  }
}
