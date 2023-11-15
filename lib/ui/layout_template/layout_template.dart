part of '../views.dart';

class LayoutTemplate extends StatefulWidget {
  const LayoutTemplate({super.key});

  @override
  State<LayoutTemplate> createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInfo) {
          return Scaffold(
            drawer: sizingInfo.deviceScreenType == DeviceScreenType.mobile? NavigationDrawerView() : null,
            backgroundColor: Colors.white,
            body: CenteredView(
                child: Column(
                  children: [
                    NavigationBarView(),
                    Expanded(child: Navigator(
                      key: locator<NavigationService>().navigatorKey,
                      onGenerateRoute: generateRoute,
                      initialRoute: HomeRoute,
                    ))
                  ],
                )
            ),
          );
        }
    );
  }
}
