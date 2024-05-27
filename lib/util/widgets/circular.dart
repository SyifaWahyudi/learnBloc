import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Positioned circular() {
  return const Positioned(
    top: 30,
    right: 30,
    child: Center(
      child: CupertinoActivityIndicator(
        color: Colors.white,
      ),
    ),
  );
}
