import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WooTrackView extends ConsumerStatefulWidget {
  const WooTrackView({super.key});

  @override
  ConsumerState<WooTrackView> createState() => _WooTrackViewState();
}

class _WooTrackViewState extends ConsumerState<WooTrackView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      
    );
  }
}
