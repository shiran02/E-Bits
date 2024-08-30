import 'package:flutter/material.dart';

import '../../resources/assets_manage.dart';
import '../../resources/colors.dart';
import 'curved_edges.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.17,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: TCustomCurvedWidgets(),
            child: Container(
              height: h * 0.17,
              color: AColors.primaryGreenColor,
              child: Center(
                child: Image.asset(
                  ImageAssets.splashLogo,
                  scale: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
