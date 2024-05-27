import 'package:flutter/material.dart';
import 'package:design_ui_bloc/core.dart';
import '../view/myhomepage_view.dart';

class MyhomepageController extends State<MyhomepageView> {
  static late MyhomepageController instance;
  late MyhomepageView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
