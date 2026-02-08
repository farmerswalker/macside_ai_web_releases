import 'package:flutter/material.dart';
import 'package:macside_ai_web_releases/utils/util.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () => downloadMacSideAI(),
                child: const Text('DLボタン'))));
  }
}
