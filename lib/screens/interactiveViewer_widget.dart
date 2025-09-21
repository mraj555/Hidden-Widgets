import 'package:flutter/material.dart';

/*
Flutter માં InteractiveViewer એ એક એવો Widget છે જે તમને zoom, pan (drag), scale જેવા gestures આપીને તમારા UI ને interactive બનાવે છે.
ઉદાહરણ તરીકે — જો તમે ઈમેજ, નકશો (map), અથવા કોઈ મોટું UI zoom/pan કરવું હોય તો તેનો ઉપયોગ થાય છે.

🔹 મુખ્ય પ્રોપર્ટીઝ
minScale → સૌથી નાનો zoom level (ડિફૉલ્ટ 0.8)
maxScale → સૌથી મોટો zoom level (ડિફૉલ્ટ 1.0)
panEnabled → drag (pan) allow કરવું કે નહીં
scaleEnabled → zoom (pinch to zoom) allow કરવું કે નહીં
child → જે widget પર તમે zoom/pan લાગુ કરવા માંગો છો

🔹 કેવી રીતે કામ કરશે?
તમે ઈમેજને pinch-to-zoom કરી શકો છો.
આંગળીથી drag કરીને ઈમેજને move કરી શકો છો.
zoom ની લિમિટ minScale અને maxScale થી કંટ્રોલ કરી શકો છો.
*/

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InteractiveViewer(
            panEnabled: true,
            minScale: 0.5,
            maxScale: 4 ,
            child: Image.network(
              'https://images.unsplash.com/photo-1720884413532-59289875c3e1?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ),
      ),
    );
  }
}
