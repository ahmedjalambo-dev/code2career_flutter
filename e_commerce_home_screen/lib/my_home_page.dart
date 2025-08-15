import 'dart:io';

import 'package:e_commerce_home_screen/widgets/freelancer_widget.dart';
import 'package:e_commerce_home_screen/widgets/section_title_widget.dart';
import 'package:e_commerce_home_screen/widgets/service_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/menu.svg'),
        ),
        title: SvgPicture.asset('assets/images/logo.svg'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/notification-bing.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/shopping-cart.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hint: Row(
                          children: [
                            SvgPicture.asset('assets/images/search.svg'),
                            SizedBox(width: 10),
                            Text(
                              'Search here',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xff232939),
                              ),
                            ),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Color(0xffB2BACD)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Color(0xffB2BACD)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffB2BACD)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset('assets/images/sort.svg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            /// Today Deal
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color(0xffCBDAEE), Color(0xff9cb9dd)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                children: [
                  // Left side - Text content
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/todays-deal.svg',
                            height: 24,
                          ),
                          const SizedBox(height: 8),
                          // "50% OFF" text
                          const Text(
                            "50% OFF",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              height: 1.0,
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Description text (Lorem ipsum)
                          Text(
                            "Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey[600],
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(height: 24),

                          // CTA Button
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              elevation: 0,
                            ),
                            child: Row(
                              children: [
                                const Text(
                                  "BUY IT NOW",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right side - Image
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'assets/images/woman.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            /// Catergory Tile
            SectionTitleWidget(title: 'Top Reted Freelances'),

            SizedBox(height: 16),

            /// Freelancer
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  FreelancerWidget(
                    imgPath: 'assets/images/freelancer.png',
                    name: 'Wade Warren',
                    title: 'Beautician',
                  ),
                  FreelancerWidget(
                    imgPath: 'assets/images/freelancer.png',
                    name: 'Wade Warren',
                    title: 'Beautician',
                  ),
                  FreelancerWidget(
                    imgPath: 'assets/images/freelancer.png',
                    name: 'Wade Warren',
                    title: 'Beautician',
                  ),
                  FreelancerWidget(
                    imgPath: 'assets/images/freelancer.png',
                    name: 'Wade Warren',
                    title: 'Beautician',
                  ),
                  FreelancerWidget(
                    imgPath: 'assets/images/freelancer.png',
                    name: 'Wade Warren',
                    title: 'Beautician',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            SectionTitleWidget(title: 'Top Services'),
            ServiceWidget(imgPath: 'assets/images/serv1.png'),
            ServiceWidget(imgPath: 'assets/images/serv2.png'),
            ServiceWidget(imgPath: 'assets/images/serv3.png'),
          ],
        ),
      ),
    );
  }
}
