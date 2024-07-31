import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojiFeeeling extends StatelessWidget {
  final String path;
  final String word;
  const EmojiFeeeling({super.key,required this.path,required this.word,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            //borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(path),
        ),
        SizedBox(height: 8,),
        Text(word,style: GoogleFonts.inder(fontWeight: FontWeight.w400,fontSize: 14,),),
      ],
    );
  }
}
