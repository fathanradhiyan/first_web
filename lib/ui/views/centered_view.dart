part of '../views.dart';

class CenteredView extends StatefulWidget {
  final Widget child;
  const CenteredView({super.key, required this.child});

  @override
  State<CenteredView> createState() => _CenteredViewState();
}

class _CenteredViewState extends State<CenteredView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: widget.child,
      ),
    );
  }
}
