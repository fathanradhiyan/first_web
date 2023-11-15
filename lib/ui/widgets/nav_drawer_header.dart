part of '../widgets.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.orange,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('SKILL UP NOW', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),),
          Text('TAP HERE', style: TextStyle(
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}
