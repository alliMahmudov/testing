import 'package:testing/utils/tools/importer.dart';


class StoryWidget extends StatefulWidget {
  final String imagePath;
  const StoryWidget({required this.imagePath, super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 9),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(color: isActive ? MyColors.ellipseActive : MyColors.ellipseNotActive, width: isActive ? 2 : 1),
          image: DecorationImage(
            image: ExactAssetImage(widget.imagePath),
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
