import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_ecommerce/fruits_app.dart';

import 'core/routes/app_router.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();

  runApp(FruitsApp(
    appRouter: AppRouter(),
  ));
}
