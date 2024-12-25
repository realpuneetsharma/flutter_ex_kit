import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FlutterExKit{
  // Private static variable to hold the single instance
  static final FlutterExKit _instance = FlutterExKit._internal();

  // Private constructor to prevent external instantiation
  FlutterExKit._internal();

  // Factory constructor to return the single instance
  factory FlutterExKit() {
    return _instance;
  }


  // Define
  String get logEmoji => '💢💢💢💢💢💢';
  String get logEmojiDown => '💯💯💯💯💯💯';
  bool get logEnable => kDebugMode;
  Color get imageLoader => const Color(0xff000000);


}




