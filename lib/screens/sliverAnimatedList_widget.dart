import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_widget/controllers/sliveranimatedlist_controller.dart';

/*
SliverAnimatedList એ એક sliver widget છે જે તમને list માંથી item add/remove કરવા માટે smooth animation આપે છે.
આ widget ને તમે માત્ર CustomScrollView ના અંદર જ મૂકી શકો છો.

📝 સમજાવટ
GlobalKey → SliverAnimatedListState ને access કરવા માટે જરૂરી.
_items List → તમારાં data store થાય છે (જે list માં દેખાશે).
insertItem() → નવું item add કરવું હોય ત્યારે animation સાથે list માં દેખાય છે.
removeItem() → કોઈ item delete કરવું હોય ત્યારે animation સાથે remove થાય છે.
CustomScrollView → SliverAnimatedList હંમેશાં slivers property અંદર મુકવી પડે છે.
*/

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
