part of '../views.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const HomeContentMobileView(),
      tablet: (BuildContext context) => const HomeContentMobileView(),
      desktop: (BuildContext context) => const HomeContentDesktopView(),
    );
  }
}
