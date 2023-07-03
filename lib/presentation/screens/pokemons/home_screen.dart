import 'package:flutter/material.dart';
import 'package:pokedex/presentation/views/views.dart';
import 'package:pokedex/presentation/widgets/shared/custom_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  
  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({
    super.key, 
    required this.pageIndex 
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      keepPage: true
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final viewRoutes = const <Widget>[
    HomeView(),
    FavoritesView()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        // avoid that rebote 
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        // index: pageIndex
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: widget.pageIndex
      ),

    );
  }
}
