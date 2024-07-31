import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFeatures extends StatelessWidget {
  const CustomFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      //width: 224,
      height: 168,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFECFDF3),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Positive vibes',style: GoogleFonts.inder(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF344054)
              ),),
              Text('Boost your mood with\nPositive vibes',style: GoogleFonts.inder(
                fontSize: 16,
                fontWeight: FontWeight.w400,),),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 23,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF32D583)
                    ),
                    child:const  Icon(Icons.play_arrow,color: Colors.white,),
                  ),
                  const SizedBox(width: 8,),
                  const Text('10 mins')
                ],
              )
            ],
          ),
          Image.asset('Assets/moodyImages/Walking the Dog.png')
        ],
      ),
    );
  }
}
