import 'package:flutter/material.dart';
import 'ui.dart';
import '../data/api_service.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';

class Hotel_Main extends StatefulWidget {
  const Hotel_Main({super.key});

  @override
  State<Hotel_Main> createState() => _Hotel_MainState();
}

class _Hotel_MainState extends State<Hotel_Main> {
  final Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    getRating();
    getRatingNameWidget();
    getadressname();
    getprice();
    getpriceforit();
  }

  Future<void> getRating() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getRating();
    setState(() {
      rating = response;
    });
  }

  Future<void> getRatingNameWidget() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getRatingName();
    setState(() {
      rating_name = response;
    });
  }

  Future<void> getadressname() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getadress();
    setState(() {
      adress = response;
    });
  }

  Future<void> getprice() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getprice();
    setState(() {
      minimal_price = response;
    });
  }

  Future<void> getpriceforit() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.get_itpr();
    setState(() {
      price_for_it = response;
    });
  }

  Future<void> getdescription() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getDescription();
    setState(() {
      hotel_description1 = response;
    });
  }

  dynamic rating = null;
  dynamic rating_name = null;
  dynamic adress = null;
  dynamic minimal_price = null;
  dynamic price_for_it = null;
  dynamic hotel_description1 = null;

  @override
  Widget build(BuildContext context) {
    const double screenHeight = 257;
    final double screenWidth = MediaQuery.of(context).size.width * 1.1;

    if (rating_name == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.blueAccent,
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          bottomSheet: Container(
            color: Colors.white,
            height: 88,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 27, bottom: 8),
              child: SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width / 1.1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '2screen');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 13, 114, 255),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "К выбору номера",
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 467,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Column(
                    children: [
                      const Gap(19),
                      const Center(
                        child: Text(
                          "Отель",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Gap(16),
                      CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: screenWidth / screenHeight,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                        ),
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 15,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 15,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 15,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(16),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 29,
                            width: 159,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 244, 204),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Color.fromARGB(255, 255, 168, 0),
                                  ),
                                  UI.buildRatingWidget(rating),
                                  const Gap(5),
                                  UI.buildRatingNameWidget(rating_name)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Steigenberger Makadi",
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            )),
                      ),
                      UI.buildadressname(adress),
                      const Gap(16),
                      Row(
                        children: [
                          UI.buildprice(minimal_price),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: UI.buildpriceforit(price_for_it)),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Об отеле",
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Gap(16),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 251, 251, 252)),
                                    height: 29,
                                    width: 100,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "3-я линия",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 130, 135, 150)),
                                      ),
                                    ),
                                  ),
                                  const Gap(8),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 251, 251, 252)),
                                    height: 29,
                                    width: 100,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "Платный Wi-Fi в фойе",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 130, 135, 150)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(13),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 251, 251, 252)),
                                    height: 29,
                                    width: 170,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "30 км до аэропорта",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 130, 135, 150)),
                                      ),
                                    ),
                                  ),
                                  const Gap(8),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 251, 251, 252)),
                                    height: 29,
                                    width: 133,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "1 км до пляжа",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 130, 135, 150)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, right: 16),
                                  child: Text(
                                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(16),
                              Container(
                                height: 224,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 251, 251, 252),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    const ListTile(
                                      trailing: Image(
                                          image: AssetImage(
                                              'assets/images/arrow.png')),
                                      leading: Image(
                                          image: AssetImage(
                                              'assets/images/emoji-happy.png')),
                                      title: Text(
                                        "Удобства",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      subtitle: Text(
                                        "Самое необходимое",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16, left: 50),
                                      child: Container(
                                        // Я знаю что можно сделать через divider
                                        width: 275,
                                        height: 0.3,
                                        color: const Color.fromARGB(
                                            130, 135, 150, 255),
                                      ),
                                    ),
                                    const ListTile(
                                      trailing: Image(
                                          image: AssetImage(
                                              'assets/images/arrow.png')),
                                      leading: Image(
                                          image: AssetImage(
                                              'assets/images/tick-square.png')),
                                      title: Text(
                                        "Что включено",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      subtitle: Text(
                                        "Самое необходимое",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16, left: 50),
                                      child: Container(
                                        // Я знаю что можно сделать через divider
                                        width: 275,
                                        height: 0.3,
                                        color: const Color.fromARGB(
                                            130, 135, 150, 255),
                                      ),
                                    ),
                                    const ListTile(
                                      trailing: Image(
                                          image: AssetImage(
                                              'assets/images/arrow.png')),
                                      leading: Image(
                                          image: AssetImage(
                                              'assets/images/close-square.png')),
                                      title: Text(
                                        "Что включено",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      subtitle: Text(
                                        "Самое необходимое",
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 246, 246, 249),
        ),
      );
    }
  }
}
