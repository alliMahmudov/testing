import 'package:testing/utils/tools/importer.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: 108,
      width: 239,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300 ,spreadRadius: 0, blurRadius: 20, offset: const Offset(4, 4))
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Название магазина", style: TextStyle(color: MyColors.textColor),),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300 ,spreadRadius: 0, blurRadius: 20, offset: const Offset(4, 4))
                    ]
                ),
                child: const Icon(Icons.navigate_next, size: 18,),
              )

            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/components/location.svg"),
                  const Text("  ул.Турусбекова А167", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: MyColors.textColor),)
                ],
              ),

              const SizedBox(height: 5,),

              Row(
                children: [
                  SvgPicture.asset("assets/components/time.svg"),
                  const Text("  08:00 - 22:00", style: TextStyle(fontSize: 12, color: MyColors.timeColor),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
