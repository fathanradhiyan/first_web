part of '../widgets.dart';

class CallToActionMobile extends StatefulWidget {
  final String title;
  const CallToActionMobile({super.key, required this.title});

  @override
  State<CallToActionMobile> createState() => _CallToActionMobileState();
}

class _CallToActionMobileState extends State<CallToActionMobile> {
  Color buttonColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          buttonColor = Colors.green;
        });
      },
      onExit: (e) {
        setState(() {
          buttonColor = Colors.orange;
        });
      },
      child: Container(
        height: 60,
        alignment: Alignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          widget.title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white
          ),
        ),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}
