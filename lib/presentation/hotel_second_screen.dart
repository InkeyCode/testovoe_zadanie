import 'package:flutter/material.dart';
import 'package:flutter_work_ex1/data/api_service.dart';
import 'package:flutter_work_ex1/presentation/ui.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Second_screen extends StatefulWidget {
  const Second_screen({super.key});

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  dynamic firstName1;
  dynamic aboutblock1;
  dynamic price2;
  dynamic priceper;
  dynamic rating;

  @override
  void initState() {
    super.initState();
    getfirstroomname();
    getfirstblock1();
    getprice2();
    getpriceperwhat();
  }

  Future<void> getfirstroomname() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.fetchFirstRoomName();
    setState(() {
      firstName1 = response;
    });
  }

  Future<void> getfirstblock1() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.fetchfirstblock1();
    setState(() {
      aboutblock1 = response;
    });
  }

  Future<void> getprice2() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getprice2();
    setState(() {
      price2 = response;
    });
  }

  Future<void> getpriceperwhat() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getpriceper2();
    setState(() {
      priceper = response;
    });
  }

  Future<void> getrating3screen() async {
    final ApiService apiService = ApiService();
    final dynamic response = await apiService.getrating3screen();
    setState(() {
      rating = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double screenHeight = 257;
    final double screenWidth = MediaQuery.of(context).size.width * 1.1;
    if (price2 == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.blueAccent,
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(8),
              Container(
                width: double.infinity,
                height: 539,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CarouselSlider(
                          items: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 15,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg',
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 15,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg',
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            aspectRatio: screenWidth / screenHeight,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: true,
                          )),
                    ),
                    UI.buildnamefirst(firstName1),
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    const Color.fromARGB(255, 251, 251, 252)),
                            height: 29,
                            width: 131,
                            child: const Center(
                              child: Text(
                                "Все включено",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                            ),
                          ),
                          const Gap(8),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    const Color.fromARGB(255, 251, 251, 252)),
                            height: 29,
                            width: 131,
                            child: const Center(
                              child: Text(
                                "Кондиционер",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(8),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 231, 241, 255)),
                          height: 29,
                          width: 190,
                          child: const Row(
                            children: [
                              Gap(10),
                              Center(
                                child: Text(
                                  "Подробнее о номере",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 13, 114, 255)),
                                ),
                              ),
                              Gap(7),
                              Image(
                                  image: AssetImage('assets/images/Vector.png'))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        UI.buildpricesecond(price2),
                        const Gap(8),
                        UI.buildpriceper(priceper),
                      ],
                    ),
                    const Gap(14),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'bronirovanie_screen');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 48,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 13, 114, 255),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Выбрать номер",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(8),
              Container(
                width: double.infinity,
                height: 539,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CarouselSlider(
                          items: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 15,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://mmf5angy.twic.pics/ahstatic/www.ahstatic.com/photos/b1j0_roskdc_00_p_1024x768.jpg?ritok=65&twic=v1/cover=800x600',
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 15,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://tour-find.ru/thumb/2/bsb2EIEFA8nm22MvHqMLlw/r/d/screenshot_3_94.png',
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            aspectRatio: screenWidth / screenHeight,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: true,
                          )),
                    ),
                    UI.buildnamefirst(firstName1),
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    const Color.fromARGB(255, 251, 251, 252)),
                            height: 29,
                            width: 131,
                            child: const Center(
                              child: Text(
                                "Все включено",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                            ),
                          ),
                          const Gap(8),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    const Color.fromARGB(255, 251, 251, 252)),
                            height: 29,
                            width: 131,
                            child: const Center(
                              child: Text(
                                "Кондиционер",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(8),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 231, 241, 255)),
                          height: 29,
                          width: 190,
                          child: const Row(
                            children: [
                              Gap(10),
                              Center(
                                child: Text(
                                  "Подробнее о номере",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 13, 114, 255)),
                                ),
                              ),
                              Gap(7),
                              Image(
                                  image: AssetImage('assets/images/Vector.png'))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 14,
                              left: 16,
                            ),
                            child: Text(
                              '289400 ₽',
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const Gap(8),
                        UI.buildpriceper(priceper),
                      ],
                    ),
                    const Gap(14),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'bronirovanie_screen');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 48,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 13, 114, 255),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Выбрать номер",
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 246, 246, 249),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'main');
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              )),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            "Steigenberger Makadi",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
      );
    }
  }
}
