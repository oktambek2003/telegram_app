import 'package:flutter/material.dart';
import 'package:image/route.dart';

void main() {
  return runApp(TelegramApp());
}

class TelegramApp extends StatelessWidget {
  const TelegramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateroute,
    );
  }
}
