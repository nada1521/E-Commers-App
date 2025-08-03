import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/core/service/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
 
  setupGetIt();
  runApp(ECommersApp());
}

class ECommersApp extends StatelessWidget {
  const ECommersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
