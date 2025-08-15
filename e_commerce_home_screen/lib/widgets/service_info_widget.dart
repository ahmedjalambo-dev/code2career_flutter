import 'package:e_commerce_home_screen/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class ServiceInfoWidget extends StatelessWidget {
  const ServiceInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(16, 130, 123, 235),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/servicer.png'),
              radius: 24,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Miss Zachary Will',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Beautician',
                    style: TextStyle(fontSize: 14, color: Color(0xff827BEB)),
                  ),
                  Text(
                    'Doloribus saepe aut necessit qui non qui.',
                    style: TextStyle(fontSize: 12, color: Color(0xff6B6B6B)),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Row(
                    spacing: 4,
                    children: [
                      RatingWidget(rate: '4.6'),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff827beb),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 18,
                          ),
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
