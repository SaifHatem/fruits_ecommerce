import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_assets.dart';
import 'package:fruits_ecommerce/features/onboarding/presentation/widgets/page_view_item.dart';
import 'package:fruits_ecommerce/generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.svgsPageViewItem1Image,
          backgroundImage: Assets.svgsPageViewItem1BackgroundImage,
          subtitle: S.of(context).onBoarding1Subtitle,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).onBoarding1Title,
              ),
              const Text('Fruit'),
              const Text('HUB')
            ],
          ),
        ),
        PageViewItem(
          image: Assets.svgsPageViewItem2Image,
          backgroundImage: Assets.svgsPageViewItem2BackgroundImage,
          subtitle: S.of(context).onBoarding2Subtitle,
          title: Text(
            textAlign: TextAlign.center,
            S.of(context).onBoarding2Title,
            style: const TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
