import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_widget/screens/backdropfilter_widget.dart';
import 'package:hidden_widget/screens/interactiveViewer_widget.dart';
import 'package:hidden_widget/screens/shadermask_widget.dart';
import 'package:hidden_widget/screens/sliverAnimatedList_widget.dart';

/*
📌 CustomScrollView શું છે?
CustomScrollView એ એક એવું સ્ક્રોલિંગ વિજેટ છે જેમાં તમે slivers (sliver widgets) નો ઉપયોગ કરી શકો છો.
ListView અથવા SingleChildScrollView કરતા વધુ કંટ્રોલ આપે છે.

📌 SliverFillRemaining શું છે?
SliverFillRemaining એ એવો sliver છે જે બાકીનું space ભરવા માટે ઉપયોગ થાય છે.

📖 સમજાણું:
ઉપર SliverAppBar છે જે સ્ક્રોલ થાય છે.
પછી SliverList છે જે લિસ્ટ આઇટમ્સ બતાવે છે.
છેલ્લે SliverFillRemaining છે, જે સ્ક્રીનનો બાકીનો ભાગ ભરશે (જો લિસ્ટ નાનું હોય તો પણ).
જો hasScrollBody: false મુકશો તો બાકી જગ્યા auto ભરાઈ જશે.
અંદર આપણે button / text / કોઈપણ widget મૂકી શકીએ.
*/

/*
RawMagnifier Flutter માં એક નવો widget છે (Flutter 3.7+). એનો ઉપયોગ સ્ક્રીન પર text અથવા widget magnify (zoom) કરવા માટે થાય છે. એ mostly text selection કે custom magnifier effect માટે વપરાય છે.

📝 સમજણ
RawMagnifier → એ widget magnifier effect આપે છે.
size → Magnifier નું box કેટલું મોટું હશે એ નક્કી કરે છે.
magnificationScale → કેટલું zoom કરવું છે (2.0 = 200%).
decoration → Magnifier નું border, shape customize કરી શકીએ.
onPanUpdate (GestureDetector) → Magnifier ને drag કરી શકીએ.
*/

/*
📝 AnimatedPositionedDirectional શું છે?
AnimatedPositionedDirectional એ એક animated widget છે, જેનાથી તમે widget ને start / end / top / bottom પરથી સ્લાઇડિંગ (slide) એનિમેશન સાથે ખસેડી શકો છો.
એ PositionedDirectional નું animated વર્ઝન છે.

🔎 સમજાણું
Stack → widget ને overlap કરવા માટે ઉપયોગમાં લેવાય છે.
AnimatedPositionedDirectional → widget ને start/top/end/bottom પરથી ખસેડે છે.
duration → એનિમેશન કેટલો સમય ચાલશે.
curve → એનિમેશનનો flow કઈ રીતે થશે (linear, easeInOut, etc.).
setState → બટન દબાવતા widget નવું સ્થાન લઈ લે છે અને એનિમેશન ચાલે છે.
*/

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
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Get.to(() => BackDropFilterWidget()),
            child: Text("BackDropFilter Widget"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Get.to(() => ShaderMaskWidget()),
            child: Text("ShaderMask Widget"),
          ),
        ],
      ),
    ));
  }
}
