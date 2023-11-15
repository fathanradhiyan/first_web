part of '../views.dart';

class NavigationDrawerView extends StatelessWidget {
  const NavigationDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: Column(
        children: [
          NavDrawerHeader(),
          Draweritem(title: 'Episodes', icon: Icons.videocam, navigationPath: EpisodesRoute,),
          Draweritem(title: 'About', icon: Icons.help, navigationPath: AboutRoute,),
        ],
      ),
    );
  }
}
