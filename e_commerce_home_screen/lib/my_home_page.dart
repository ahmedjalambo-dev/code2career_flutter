import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        /// search and sort
        child: Column(
          children: [
            Row(
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
          ],
        ),
      ),
    );
  }
}
