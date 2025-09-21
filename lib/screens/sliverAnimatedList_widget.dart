import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_widget/controllers/sliveranimatedlist_controller.dart';

class SliverAnimatedListWidget extends StatelessWidget {
  SliverAnimatedListWidget({super.key});

  final SliverAnimatedListController _controller = Get.put(SliverAnimatedListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAnimatedList(
              key: _controller.listKey,
              initialItemCount: _controller.mobiles.length,
              itemBuilder: (context, index, animation) => FadeTransition(
                opacity: animation,
                child: ListTile(leading: Text("${index + 1}"), title: Text(_controller.mobiles[index])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
