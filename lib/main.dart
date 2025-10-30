import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pg_pritani/screens/cart_screen.dart';
import 'package:pg_pritani/screens/detail_product_screen.dart';
import 'package:pg_pritani/screens/home_screen.dart';
import 'package:pg_pritani/screens/product_screen.dart';
import 'package:pg_pritani/screens/profile_screen.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/layout/custom_bottom_bar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
          GoRoute(
            path: '/product',
            builder: (context, state) => const ProductScreen(),
          ),
          GoRoute(
            path: '/product/detail',
            builder: (context, state) => const DetailProductScreen(),
          ),

          GoRoute(
            path: '/cart',
            builder: (context, state) => const CartScreen(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          // ubah warna bg
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.primary,
              titleTextStyle: TextStyle(fontSize: 20.sp),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            scaffoldBackgroundColor: AppColors.background,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: AppColors.text),
              bodyMedium: TextStyle(color: AppColors.text),
              bodySmall: TextStyle(color: AppColors.text),
              titleLarge: TextStyle(color: AppColors.text),
              titleMedium: TextStyle(color: AppColors.text),
              titleSmall: TextStyle(color: AppColors.text),
            ),
          ),
          routerConfig: _router,
        );
      },
    );
  }
}

class MainScaffold extends StatefulWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  final List<String> _routes = ['/', '/product', '/cart', '/profile'];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    context.go(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
