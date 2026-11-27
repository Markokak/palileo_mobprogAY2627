import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';
import 'screens/home_screen.dart';
import 'screens/newsfeed_screen.dart';

void main() => runApp(const KwentuhanApp());

class KwentuhanApp extends StatelessWidget {
  const KwentuhanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kwentuhan',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: FB_PRIMARY),
          scaffoldBackgroundColor: FB_BACKGROUND,
          appBarTheme: const AppBarTheme(
            backgroundColor: FB_DARK_PRIMARY,
            foregroundColor: FB_TEXT_COLOR_WHITE,
            elevation: 0,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: FB_TEXT_COLOR_WHITE,
            selectedItemColor: FB_PRIMARY,
            unselectedItemColor: FB_BLUE_GRAY,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        initialRoute: '/home',
        routes: {
          '/newsfeed': (context) => const NewsFeedScreen(),
          '/home': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
