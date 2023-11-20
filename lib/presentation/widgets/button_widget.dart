import 'package:testing/utils/tools/importer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: width(context),
      height: 50,
      decoration: BoxDecoration(
        color: MyColors.buttonColor,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/components/layer.svg"),
          const Text(" Перейти в Каталог", style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }
}
