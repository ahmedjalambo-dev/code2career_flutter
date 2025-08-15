import 'package:e_commerce_home_screen/widgets/service_info_widget.dart';
import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  final String imgPath;

  const ServiceWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              height: 180,
              width: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(right: -170, child: ServiceInfoWidget()),
          ],
        ),
      ),
    );
  }
}
