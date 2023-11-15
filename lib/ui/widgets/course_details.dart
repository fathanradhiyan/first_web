part of '../widgets.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        var textAlignment = sizingInfo.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;
        double titleSize = sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 50: 80;
        double descriptionSize = sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 16: 21;
        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                textAlign: textAlignment,
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                textAlign: textAlignment,
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
              ),

            ],
          ),
        );
      }
    );
  }
}
