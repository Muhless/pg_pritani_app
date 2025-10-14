import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pg_pritani/screens/category/bran_screen.dart';
import 'package:pg_pritani/screens/category/category_screen.dart';
import 'package:pg_pritani/screens/category/husk_screen.dart';
import 'package:pg_pritani/screens/category/rice_screen.dart';
import 'package:pg_pritani/screens/home_screen.dart';
import 'package:pg_pritani/screens/profile_screen.dart';
import 'package:pg_pritani/screens/transaction_screen.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/custom_bottom_bar.dart';

void main() {
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
            path: '/category',
            builder: (context, state) => const ProductScreen(),
          ),
          GoRoute(
            path: '/category/rice',
            builder: (context, state) => const RiceScreen(),
          ),
          GoRoute(
            path: '/category/bran',
            builder: (context, state) => const BranScreen(),
          ),
          GoRoute(
            path: '/category/husk',
            builder: (context, state) => const HuskScreen(),
          ),

          GoRoute(
            path: '/transaction',
            builder: (context, state) => const TransactionScreen(),
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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // ubah warna bg
        theme: ThemeData(
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
      ),
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

  final List<String> _routes = ['/', '/category', '/transaction', '/profile'];

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
