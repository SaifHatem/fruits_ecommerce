import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/core/utils/spacing.dart';
import 'package:fruits_ecommerce/core/utils/widgets/app_text_buttom.dart';
import 'package:fruits_ecommerce/features/onboarding/presentation/widgets/on_boarding_page_view.dart';

import '../../../../generated/l10n.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: const DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.lightGreen,
          ),
        ),
        verticalSpace(29),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Constants.kDefaultPadding,
          ),
          child: AppTextButton(
              buttonText: S.of(context).startNow,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
              onPressed: () {}),
        ),
        verticalSpace(43),
      ],
    );
  }
}
