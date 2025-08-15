import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final String rate;
  const RatingWidget({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xfff5f4fd),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, size: 24, color: Color(0xff827beb)),
          SizedBox(width: 5),
          Text(
            rate,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
