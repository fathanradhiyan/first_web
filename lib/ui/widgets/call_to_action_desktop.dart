part of '../widgets.dart';

class CallToActionDesktop extends StatefulWidget {
  final String title;
  const CallToActionDesktop({super.key, required this.title});

  @override
  State<CallToActionDesktop> createState() => _CallToActionDesktopState();
}

class _CallToActionDesktopState extends State<CallToActionDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        widget.title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
