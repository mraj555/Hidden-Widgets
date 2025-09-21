import 'package:flutter/material.dart';

/*
ShaderMask Flutter માં એક એવો widget છે, જે કોઈપણ child widget પર shader (જેમ કે gradient, image shader, radial shader, વગેરે) લગાવી શકે છે.
અર્થાત્, widget ના પેઇન્ટ થવા પર shader filter લાગશે.

🔹 સમજાવો
shaderCallback → અહીં તમે gradient અથવા shader define કરો છો.
blendMode → Shader અને child કેવી રીતે મિક્સ થશે તે નક્કી કરે છે.
સામાન્ય રીતે BlendMode.srcIn વપરાય છે જેથી shader સીધા child પર લાગશે.
child → એ widget છે જેના પર shader લાગશે (Text, Icon, Image, વગેરે).
*/

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [Colors.purple, Colors.blue]).createShader(bounds),
            blendMode: BlendMode.srcATop,
            child: Icon(Icons.star, size: 80),
          ),
        ),
      ),
    );
  }
}
