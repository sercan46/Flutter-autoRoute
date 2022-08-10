import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  final String url;
  const HomeDetailView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
      ),
    );
  }
}
