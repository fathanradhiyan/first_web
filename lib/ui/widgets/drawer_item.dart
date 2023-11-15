part of '../widgets.dart';

class Draweritem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const Draweritem({super.key, required this.title, required this.icon, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30,),
          NavigationBarItem(title: title, navigationPath: navigationPath,)
        ],
      ),
    );
  }
}
