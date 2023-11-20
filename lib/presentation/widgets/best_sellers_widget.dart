import 'package:testing/utils/tools/importer.dart';

class BestSellers extends StatefulWidget {
  final String imagePath;

  const BestSellers({required this.imagePath, super.key});

  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 264,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300 ,spreadRadius: 0, blurRadius: 20, offset: const Offset(4, 4))
        ]
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(widget.imagePath),
              Positioned(
                top: 10,
                left: 8,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: MyColors.likeBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      size: 15,
                      color: MyColors.buttonColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "1200 сом",
                  style: TextStyle(
                      color: MyColors.appbarColor, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Держатель для лейки BOOU PG605",
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Доступно: ",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 10),
                        children: const <TextSpan>[
                          TextSpan(
                              text: "32",
                              style: TextStyle(
                                  color: MyColors.error,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: MyColors.buttonColor,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
