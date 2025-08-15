import 'package:e_commerce_home_screen/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FreelancerWidget extends StatelessWidget {
  final String name;
  final String title;
  final String imgPath;
  const FreelancerWidget({
    super.key,
    required this.name,
    required this.title,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        CircleAvatar(radius: 50, backgroundImage: AssetImage(imgPath)),
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(16, 130, 123, 235),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Wade Warren', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                const Text(
                  'Beautician',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                // Rating section
                RatingWidget(rate: '4.8'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
