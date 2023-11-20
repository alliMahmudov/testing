import 'package:testing/utils/tools/importer.dart';


class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
          const Text("Все", style: TextStyle(color: MyColors.buttonColor, fontSize: 17),)
        ],
      ),
    );
  }
}
