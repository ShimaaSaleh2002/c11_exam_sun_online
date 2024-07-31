import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomExercise extends StatelessWidget {
  final String path;
  final String label;
  final Color col;
  const CustomExercise({super.key,required this.path,required this.label,required this.col});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 151,
        // width: 56,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius:BorderRadius.circular(8) ,
            color:col,
        ),
        child: Row(
          children: [
            Image.asset(path),
            const SizedBox(width: 12,),
            Text(label,style: GoogleFonts.inder(
                fontSize: 14,
                fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
