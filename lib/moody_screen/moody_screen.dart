import 'package:badges/badges.dart';
import 'package:c11_exam_sun_online/moody_screen/exercises.dart';
import 'package:c11_exam_sun_online/moody_screen/features.dart';
import 'package:c11_exam_sun_online/moody_screen/feelings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyScreen extends StatefulWidget {
  static const String routeName = 'moody';
  const MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  int _selectedIndex = 0;
  int activeIndicatorIndex = 0;
  List<Widget> features = [
    const CustomFeatures(),
    const CustomFeatures(),
    const CustomFeatures(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12,top: 24),
                child: Row(
                  children: [
                    Image.asset('Assets/moodyImages/logo.png'),
                    const SizedBox(width: 8,),
                    Text(
                      'Moody',
                      style: GoogleFonts.inder(fontWeight: FontWeight.w400, fontSize: 24),
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Icon(
                          Icons.notifications_none,
                          color: Color(0xFF101828),
                          size: 24,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.inder(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(' Sara Rose',
                      style: GoogleFonts.inder(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ],
              ),
              Text('How are you feeling today ?',
                  style: GoogleFonts.inder(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              const SizedBox(height: 16,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EmojiFeeeling(
                    path: 'Assets/moodyImages/love.png',
                    word: 'Love',
                  ),
                  EmojiFeeeling(
                    path: 'Assets/moodyImages/glass.png',
                    word: 'Cool',
                  ),
                  EmojiFeeeling(
                    path: 'Assets/moodyImages/happy.png',
                    word: 'Happy',
                  ),
                  EmojiFeeeling(
                    path: 'Assets/moodyImages/sad.png',
                    word: 'Sad',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature',
                    style: GoogleFonts.inder(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.green,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, top: 16),
                    child: CarouselSlider.builder(
                        itemCount: features.length,
                        itemBuilder: (context, index, realIndex) {
                          return features[index];
                        },
                        options: CarouselOptions(
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                            });
                            activeIndicatorIndex = index;
                          },
                        )),
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndicatorIndex,
                    count: features.length,
                    effect: const ColorTransitionEffect(
                      activeDotColor: Color(0xFF98A2B3),
                      dotColor: Color(0xFFD9D9D9),
                      dotHeight: 6,
                      dotWidth: 6,
                      spacing: 6,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: GoogleFonts.inder(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.green,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
              const Row(
                children: [
                  CustomExercise(
                      path: 'Assets/moodyImages/meditation.png',
                      label: 'Relaxation',
                      col: Color(0xFFF9F5FF)),
                  SizedBox(
                    width: 24,
                  ),
                  CustomExercise(
                      path: 'Assets/moodyImages/sit.png',
                      label: 'Meditation',
                      col: Color(0xFFFDF2FA)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  CustomExercise(
                      path: 'Assets/moodyImages/breath.png',
                      label: 'Breathing',
                      col: Color(0xFFFFFAF5)),
                  SizedBox(
                    width: 24,
                  ),
                  CustomExercise(
                      path: 'Assets/moodyImages/yoga.png',
                      label: 'Yoga',
                      col: Color(0xFFF0F9FF)),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Stack(children: [
          SizedBox(
            height: 88,
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps_rounded),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              unselectedItemColor: const Color(0xFF667085),
              selectedItemColor: Colors.green,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              //backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          Positioned(
            bottom: 25,
            left: MediaQuery.of(context).size.width / 4 * _selectedIndex,
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 20.0,
              color: Colors.transparent,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}

// Badge(
//   position: BadgePosition.topEnd(top: 0, end: 0),
//   badgeContent: SizedBox.shrink(),  // Leave empty for an empty badge
//   badgeColor: Colors.red,
//   child: IconButton(
//     icon: Icon(Icons.notifications),
//     onPressed: () {
//       // Handle notification icon press
//     },
//   ),
// ),