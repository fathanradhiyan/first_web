part of '../views.dart';

class HomeContentMobileView extends StatefulWidget {
  const HomeContentMobileView({super.key});

  @override
  State<HomeContentMobileView> createState() => _HomeContentMobileViewState();
}

class _HomeContentMobileViewState extends State<HomeContentMobileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: CourseDetails(),
          ),
          SizedBox(height: 100,),
          CallToAction(title: 'Join Course',),
        ],
      ),
    );
  }
}
