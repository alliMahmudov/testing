import 'package:testing/utils/tools/importer.dart';


class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      height: 178,
      width: 223,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300 ,spreadRadius: 0, blurRadius: 20, offset: const Offset(4, 4))
        ]
      ),
      child: Column(
        children: [
          Image.asset("assets/images/image_6.png"),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: const Text(
                "Дарим подарки каждую неделю + 2 путешествие",
              ))
        ],
      ),
    );
  }
}
