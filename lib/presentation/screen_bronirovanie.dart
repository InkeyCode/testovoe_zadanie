import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_work_ex1/data/api_service.dart';
import 'package:flutter_work_ex1/presentation/tourist.dart';
import 'package:flutter_work_ex1/presentation/ui.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:email_validator/email_validator.dart';

class Screen_Bronirovanie extends StatefulWidget {
  const Screen_Bronirovanie({super.key});

  @override
  State<Screen_Bronirovanie> createState() => _Screen_BronirovanieState();
}

class _Screen_BronirovanieState extends State<Screen_Bronirovanie> {
  bool tourist2open = false;
  bool tourist1open = false;
  final TextEditingController _controller = TextEditingController();
  final MaskTextInputFormatter _phoneNumberFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});
  TextEditingController emailController = TextEditingController();
  bool isValidEmail = EmailValidator.validate('test@example.com');
  dynamic rating3;
  dynamic rating_discription;
  dynamic hotel_discription;
  dynamic ratingname;
  dynamic hoteladress;
  dynamic flyfrom;
  dynamic arrival_country;
  dynamic tour_date_start;
  dynamic tour_date_stop;
  dynamic kolvo_dates;
  dynamic room;
  dynamic nutrition;
  dynamic pricetour;
  dynamic fuelcharge;
  dynamic service;
  dynamic fullprice;

  var changecoloriferror = false;

  dynamic phonenumber = null;
  dynamic email = null;

  dynamic isnameEnter = null;
  dynamic issurnameEnter = null;
  dynamic isdateofbornEnter = null;
  dynamic isgrajdanstvoEnter = null;
  dynamic nomerzagranpasportaEnter = null;
  dynamic srokzagranpasportaEnter = null;

  @override
  void initState() {
    super.initState();
    getrating();
    getratingname();
    gethoteladress();
    flyfromw();
    getarrivalcountryy();
    gettourdatee();
    gettourdateestop();
    getkolvonights1();
    getroom1();
    getnutr();
    gettourprice();
    getfuelcharge1();
    getservicecharge1();
    getfullprice1();
  }

  final ApiService apiService = ApiService();

  Future<void> getrating() async {
    final dynamic response = await apiService.getrating();
    setState(() {
      rating3 = response;
    });
  }

  Future<void> getratingname() async {
    final dynamic response = await apiService.getratingname();
    setState(() {
      ratingname = response;
    });
  }

  Future<void> gethoteladress() async {
    final dynamic response = await apiService.gethoteladress();
    setState(() {
      hoteladress = response;
    });
  }

  Future<void> flyfromw() async {
    final dynamic response = await apiService.getflyfrom();
    setState(() {
      flyfrom = response;
    });
  }

  Future<void> getarrivalcountryy() async {
    final dynamic response = await apiService.getarrivalcountry();
    setState(() {
      arrival_country = response;
    });
  }

  Future<void> tourdatestartget() async {
    final dynamic response = await apiService.getarrivalcountry();
    setState(() {
      arrival_country = response;
    });
  }

  Future<void> gettourdatee() async {
    final dynamic response = await apiService.gettourdatestart();
    setState(() {
      tour_date_start = response;
    });
  }

  Future<void> gettourdateestop() async {
    final dynamic response = await apiService.gettourdatestop();
    setState(() {
      tour_date_stop = response;
    });
  }

  Future<void> getkolvonights1() async {
    final dynamic response = await apiService.getkolvonights();
    setState(() {
      kolvo_dates = response;
    });
  }

  Future<void> getroom1() async {
    final dynamic response = await apiService.getroom();
    setState(() {
      room = response;
    });
  }

  Future<void> getnutr() async {
    final dynamic response = await apiService.getnutrition();
    setState(() {
      nutrition = response;
    });
  }

  Future<void> gettourprice() async {
    final dynamic response = await apiService.getprice3();
    setState(() {
      pricetour = response;
    });
  }

  Future<void> getfuelcharge1() async {
    final dynamic response = await apiService.getfuelcharge();
    setState(() {
      fuelcharge = response;
    });
  }

  Future<void> getservicecharge1() async {
    final dynamic response = await apiService.getservicecharge();
    setState(() {
      service = response;
    });
  }

  Future<void> getfullprice1() async {
    final dynamic response = await apiService.getfullprice();
    setState(() {
      fullprice = response;
    });
  }

  SizedBox height = SizedBox(height: 16.h);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: InkWell(
          onTap: () {
            if (phonenumber == null ||
                email == null 
              
               ) {
              print(phonenumber);
              print(email);
              print(isnameEnter);
              print(issurnameEnter);
              print(isdateofbornEnter);
              print(isgrajdanstvoEnter);
              print(nomerzagranpasportaEnter);
              print(srokzagranpasportaEnter);
            } else {
              print(phonenumber);
              print(email);
              print(isnameEnter);
              Navigator.pushNamed(context, 'final');
            }
          },
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 13, 114, 255)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Оплатить $fullprice ₽",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 120,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: UI.buildrating(rating3, ratingname),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 3),
                    child: Text(
                      "Steigenberger Makadi",
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: UI.buildhoteladress(hoteladress),
                  ),
                ],
              ),
            ),
            const Gap(8),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  children: [
                    infoRow('Вылет из', '$flyfrom'),
                    height,
                    infoRow('Страна, город', '$arrival_country'),
                    height,
                    infoRow('Даты', '$tour_date_start – $tour_date_stop'),
                    height,
                    infoRow('Кол-во ночей', '$kolvo_dates ночей'),
                    height,
                    infoRow('Отель', 'Steigenberger Makadi'),
                    height,
                    infoRow('Номер', '$room'),
                    height,
                    infoRow('Питание', '$nutrition'),
                  ],
                ),
              ),
            ),
            const Gap(8),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Text(
                      "Информация о покупателе",
                      // ignore: deprecated_member_use
                      textScaleFactor: 1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          phonenumber = value;
                        });
                      },
                      controller: _controller,
                      inputFormatters: [_phoneNumberFormatter],
                      decoration: InputDecoration(
                        focusColor: Colors.blue,
                        hoverColor: Colors.blue,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Номер телефона',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 169, 171, 183),
                          fontSize: 17,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const Gap(8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextField(
                      onSubmitted: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      controller:
                          emailController, // Используем контроллер для получения введенных данных
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: changecoloriferror
                                  ? const Color.fromARGB(255, 235, 87, 87)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Почта',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 169, 171, 183),
                          fontSize: 17,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text) {
                        if (!isValidEmail) {
                          setState(() {
                            changecoloriferror = !changecoloriferror;
                          });
                        }
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, right: 16, left: 16),
                    child: Text(
                      "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Color.fromARGB(255, 130, 135, 150),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 246, 249),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Первый турист",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    tourist1open = !tourist1open;
                                  });
                                },
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 231, 241, 255),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: RotationTransition(
                                      turns: tourist1open
                                          ? const AlwaysStoppedAnimation(
                                              90 / 360)
                                          : const AlwaysStoppedAnimation(
                                              270 / 360),
                                      child: const Icon(
                                        Icons.arrow_back_ios_new,
                                        color:
                                            Color.fromARGB(255, 13, 114, 255),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          tourist1open
                              ? SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      const Gap(20),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            isnameEnter == value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText: 'Имя',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                      const Gap(8),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            issurnameEnter = value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText: 'Фамилия',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                      const Gap(8),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            isdateofbornEnter = value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText: 'Дата рождения',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType: TextInputType.datetime,
                                      ),
                                      const Gap(8),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            isgrajdanstvoEnter = null;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText: 'Гражданство',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType:
                                            TextInputType.streetAddress,
                                      ),
                                      const Gap(8),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            nomerzagranpasportaEnter = value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText: 'Номер загранпаспорта',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType: TextInputType.datetime,
                                      ),
                                      const Gap(8),
                                      TextField(
                                        onSubmitted: (value) {
                                          setState(() {
                                            srokzagranpasportaEnter = value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          labelText:
                                              'Срок действия загранпаспорта',
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 169, 171, 183),
                                            fontSize: 17,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[200],
                                        ),
                                        keyboardType: TextInputType.multiline,
                                      ),
                                    ],
                                  ),
                                )
                              : const Gap(0),
                        ],
                      ),
                    ),
                  ),
                  const Gap(16),
                  const Gap(8),
                  Container(
                    height: 173,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Тур",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                              Text(
                                "$pricetour ₽",
                                textScaleFactor: 1,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Топливный сбор",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                              Text(
                                "$fuelcharge ₽",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Сервисный сбор",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                              Text(
                                "$service ₽",
                                textScaleFactor: 1,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, right: 16, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "К оплате",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 130, 135, 150)),
                              ),
                              Text(
                                "$fullprice",
                                textScaleFactor: 1,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 13, 114, 255)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(85)
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 246, 249),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '2screen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          "Бронирование",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
    );
  }
}

Row infoRow(String tittle, String desc) {
  return Row(
    children: [
      SizedBox(
        width: 0.3.sw,
        child: Text(
          tittle,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              fontStyle: FontStyle.normal,
              color: const Color.fromARGB(255, 130, 135, 150)),
        ),
      ),
      SizedBox(
        width: 0.5.sw,
        child: Text(
          desc,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              fontStyle: FontStyle.normal,
              color: const Color.fromARGB(255, 0, 0, 0)),
        ),
      )
    ],
  );
}
