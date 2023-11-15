part of '../widgets.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavBarMobileView(),
      tablet: (BuildContext context) => const NavBarTabletDesktopView(),
      desktop: (BuildContext context) => const NavBarTabletDesktopView(),
    );
  }
}



