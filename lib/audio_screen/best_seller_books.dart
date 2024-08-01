import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerBooks extends StatelessWidget {
  const BestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xFFF5F5FA),),
      //height: 144,
      width: 315,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.red,
              ),
              child: Image.asset(
                'Assets/audioImages/Image Placeholder 2.png',
                width: 120,
                height: 120,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Light Mage',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF010104)),
              ),
              Text(
                'Lourie Forest',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6A6A8B)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
