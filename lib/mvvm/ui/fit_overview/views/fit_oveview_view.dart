import 'package:flutter/material.dart';

class FitOverViewView extends StatefulWidget {
  const FitOverViewView({super.key});

  @override
  State<FitOverViewView> createState() => _FitOverViewViewState();
}

class _FitOverViewViewState extends State<FitOverViewView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: _backgroundColor,
      ),
    );
  }
}
