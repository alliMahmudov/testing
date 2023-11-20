
import 'package:testing/utils/tools/importer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List images = [
    "assets/images/image_1.png",
    "assets/images/image_2.png",
    "assets/images/image_3.png",
    "assets/images/image_4.png",
    "assets/images/image_5.png"
  ];
  List best = [
    "assets/images/image_7.png",
    "assets/images/image_8.png",
    "assets/images/image_7.png",
    "assets/images/image_8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [

                /// vector
                SvgPicture.asset(
                  "assets/components/vector.svg",
                  width: width(context),
                ),

                /// Menu, Notification Icons
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.only(top: height(context) *.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.menu, color: Colors.white,),
                      SvgPicture.asset("assets/components/notification.svg"),
                    ],
                  ),
                ),

                /// Story
                Container(
                  color: MyColors.appbarColor,
                  margin: EdgeInsets.only(top: height(context) *.12),
                  height: height(context) * .1,
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return StoryWidget(imagePath: images[index]);
                      }),
                ),

                /// Bonus ticket (7000)
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: height(context) * .254),
                    child: AspectRatio(
                        aspectRatio: 1.575,
                        child: SvgPicture.asset("assets/components/ticket.svg")),
                  ),
                ),

                /// QR
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: height(context) * .38,
                      left: height(context) * .06
                    ),
                    child: Image.asset("assets/images/qr.png"),
                  ),
                ),
              ],
            ),

            const TitleWidget(title: "Новости и Акции"),

            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 207,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const NewsWidget();
                  }),
            ),

            const TitleWidget(title: "Хиты продаж"),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              height: 266,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                  itemCount: best.length,
                  itemBuilder: (context, index){
                return BestSellers(imagePath: best[index]);
              }),
            ),

            const ButtonWidget(),

            const TitleWidget(title: "Адреса Магазинов"),

            Container(
             height: 135,
             margin: const EdgeInsets.symmetric(vertical: 5),
             child: ListView.builder(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                 itemCount: 5,
                 itemBuilder: (context, index){
               return const AddressWidget();
             }),
           ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300 ,spreadRadius: 0, blurRadius: 30, offset: const Offset(0, 1))

          ]
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomItem(iconPath: "assets/components/home.svg", label: "Главная"),
                BottomItem(iconPath: "assets/components/catalog.svg", label: "Каталог"),
                BottomItem(iconPath: "assets/components/locate.svg", label: "Адреса"),
                BottomItem(iconPath: "assets/components/profile.svg", label: "Профиль"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
