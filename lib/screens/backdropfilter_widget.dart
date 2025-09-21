import 'dart:ui';

import 'package:flutter/material.dart';

/*
🔎 BackdropFilter શું છે?
Flutter માં BackdropFilter નો ઉપયોગ પાછળના widgets (background) ને blur (અસ્પષ્ટ) કે બીજો filter લગાવવા માટે થાય છે.
મોટેભાગે તેને Frosted Glass Effect બનાવવા માટે વાપરે છે.
એ માટે ImageFilter (dart:uiમાંથી) સાથે blurX અને blurY radius આપવી પડે છે.

📖સમજૂતી
Stack: પહેલા Background image મૂકવા માટે.
BackdropFilter: એ ImageFilter.blur લગાવે છે જેથી પાછળનું બધું blur દેખાય.
ClipRRect: Rounded corners આપવા માટે.
Container: Transparent white color સાથે frosted glass look આપે છે.
*/

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1720884413532-59289875c3e1?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(color: Colors.white.withValues(alpha: 0.2)),
          ),
        ),
      ),
    );
  }
}
