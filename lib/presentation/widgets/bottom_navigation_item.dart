import 'package:testing/utils/tools/importer.dart';

class BottomItem extends StatelessWidget {
  final String iconPath;
  final String label;
  const BottomItem({required this.iconPath, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: Column(
        children: [
          SvgPicture.asset(iconPath),
          Text(label, style: const TextStyle(fontSize: 10, color: MyColors.buttonColor),),
        ],
      ),
    );
  }
}
