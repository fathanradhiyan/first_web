part of '../widgets.dart';

class CallToAction extends StatefulWidget {
  final String title;
  const CallToAction({super.key, required this.title});

  @override
  State<CallToAction> createState() => _CallToActionState();
}

class _CallToActionState extends State<CallToAction> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => CallToActionMobile(title: widget.title),
      tablet: (BuildContext context) => CallToActionDesktop(title: widget.title),
      desktop: (BuildContext context) => CallToActionDesktop(title: widget.title),
    );
  }
}
