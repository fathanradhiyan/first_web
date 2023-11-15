part of '../views.dart';

class HomeContentDesktopView extends StatefulWidget {
  const HomeContentDesktopView({super.key});

  @override
  State<HomeContentDesktopView> createState() => _HomeContentDesktopViewState();
}

class _HomeContentDesktopViewState extends State<HomeContentDesktopView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: CourseDetails(),
          ),
          Expanded(
            child: Center(
              child: CallToAction(title: 'Join Course',),
            ),
          )
        ],
      ),
    );
  }
}
