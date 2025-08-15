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
      body: Column(
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
                        // "Today's Deal" text
                        Text(
                          "Today's Deal",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                            letterSpacing: 1.2,
                          ),
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
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
