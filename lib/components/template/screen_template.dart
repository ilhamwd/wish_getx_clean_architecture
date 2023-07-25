import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenTemplate extends StatelessWidget {
  const ScreenTemplate(
      {super.key,
      required this.child,
      this.appBar,
      this.backgroundColor,
      this.statusBarColor,
      this.statusBarIconBrightness,
      this.useSafeArea = true});

  final Widget child;
  final AppBar? appBar;
  final Color? backgroundColor, statusBarColor;
  final Brightness? statusBarIconBrightness;
  final bool useSafeArea;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness));

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: Padding(
        padding:
            useSafeArea ? MediaQuery.of(context).viewPadding : EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
