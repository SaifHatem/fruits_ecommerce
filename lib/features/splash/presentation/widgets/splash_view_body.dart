import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_ecommerce/core/functions/is_arabic.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/utils/app_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              isArabic() ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.svgsSplashTop),
          ],
        ),
        SvgPicture.asset(Assets.svgsSplashMiddle),
        SvgPicture.asset(
          Assets.svgsSplahBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNaviagtion() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingView);
    });
  }
}
