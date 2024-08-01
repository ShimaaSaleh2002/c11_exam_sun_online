import 'package:c11_exam_sun_online/audio_screen/best_seller_books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioScreen extends StatefulWidget {
  AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  String selectedOption = '';
  final List<String> chipOptions = [
    'Art',
    'Business',
    'Comedy',
    'Drama',
    'Science Fiction',
  ];
  final List<String> recommended = [
    'Assets/audioImages/Image Placeholder 400x600.png',
    'Assets/audioImages/Image Placeholder 1.png',
    'Assets/audioImages/Image Placeholder 400x600.png',
    'Assets/audioImages/Image Placeholder 1.png',
    'Assets/audioImages/Image Placeholder 400x600.png',
  ];
  final List<Widget> bestSeller = [
    const BestSellerBooks(),
    const BestSellerBooks(),
    const BestSellerBooks(),
    const BestSellerBooks(),
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 88,
        leading: Image.asset('Assets/audioImages/Logo Small.png'),
        title: const Row(
          children: [
            Text('Audi',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4838D1))),
            Text('Books',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF4838D1))),
            Text('.',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.red))
          ],
        ),
        actions: const[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.settings_outlined,
              color: Color(0xFF4838D1),
              size: 25,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
               const Text(
                  'See more',
                  style: TextStyle(
                      color: Color(0xFF4838D1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 18,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: chipOptions.map((option) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      //color: Color(0xFF2E2E5D),
                      backgroundColor: const Color(0xFFF5F5FA),
                      side: BorderSide.none,
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      label: Text(option,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xFF2E2E5D),
                      ),),
                      selected: selectedOption == option,
                      onSelected: (selected) {
                        setState(() {
                          selectedOption = selected ? option : '';
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended For You',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const Text(
                  'See more',
                  style: TextStyle(
                      color: Color(0xFF4838D1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 300,
              //width: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                      height: 300,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Image.asset(
                          recommended[index],
                          height: 300,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ));
                },
                itemCount: recommended.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 39,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Seller',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const Text(
                  'See more',
                  style: TextStyle(
                      color: Color(0xFF4838D1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 144,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: bestSeller[index]);
                },
                itemCount: bestSeller.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined), label: 'Library'),
        ],
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xFF6A6A8B),
        iconSize: 35,
        selectedItemColor: const Color(0xFF4838D1),
        currentIndex: current,
        onTap: (value) {
          current = value;
          setState(() {});
        },
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(color: Color(0xFF4838D1)),
        unselectedLabelStyle: const TextStyle(color: Color(0xFF6A6A8B)),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
