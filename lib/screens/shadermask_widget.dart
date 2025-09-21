import 'package:flutter/material.dart';

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
