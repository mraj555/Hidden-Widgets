import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_widget/screens/interactiveViewer_widget.dart';
import 'package:hidden_widget/screens/sliverAnimatedList_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ElevatedButton(
            onPressed: () => Get.to(() => InteractiveViewerWidget()),
            child: Text("InteractiveViewer Widget"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Get.to(() => SliverAnimatedListWidget()),
            child: Text("SliverAnimatedList Widget"),
          ),
        ],
      ),
    ));
  }
}
