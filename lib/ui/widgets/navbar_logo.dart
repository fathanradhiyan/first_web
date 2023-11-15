part of '../widgets.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset('assets/header_logo.png'),
    );
  }
}

class NavigationBarItem extends StatefulWidget {
  final String title;
  final String navigationPath;
  const NavigationBarItem({super.key, required this.title, required this.navigationPath});

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: _hovering ? hoverTransform : nonHoverTransform,
        child: GestureDetector(
          onTap: () {
            locator<NavigationService>().navigateTo(widget.navigationPath);
          },
            child: Text(widget.title, style: TextStyle(fontSize: 18),)),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
