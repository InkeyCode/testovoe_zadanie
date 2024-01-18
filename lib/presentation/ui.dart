import 'package:flutter/material.dart';

class UI {
  static Widget buildRatingWidget(dynamic rating) {
    return Text(
      '$rating',
      textScaleFactor: 1,
      style: const TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 255, 168, 0),
          fontWeight: FontWeight.w500),
    );
  }

  static Widget buildRatingNameWidget(dynamic rating_name) {
    return Text(
      '$rating_name',
      textScaleFactor: 1,
      style: const TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 255, 168, 0),
          fontWeight: FontWeight.w500),
    );
  }

  static Widget buildadressname(dynamic adress) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          '$adress',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 13, 114, 255),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static Widget buildprice(dynamic minimal_price) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          'от $minimal_price ₽',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static Widget buildpriceforit(dynamic price_for_it) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        child: Text(
          '$price_for_it',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  static Widget builddescriptionwidget(dynamic hotel_description1) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
        textScaleFactor: 1,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static Widget buildnamefirst(dynamic firstName1) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Text(
          '$firstName1',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static Widget buildpricesecond(dynamic price2) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          left: 16,
        ),
        child: Text(
          '$price2 ₽',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static Widget buildpriceper(dynamic priceper) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
        ),
        child: Text(
          '$priceper',
          textScaleFactor: 1,
          style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 130, 135, 150),
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  static Widget buildrating(dynamic rating3, ratingname) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 255, 244, 204)),
      width: 169,
      height: 29,
      child: Row(
        children: [
          const SizedBox(
            width: 7,
          ),
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 168, 0),
            weight: 15,
          ),
          Text(
            '$rating3',
            textScaleFactor: 1,
            style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 168, 0),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            "$ratingname",
            textScaleFactor: 1,
            style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 168, 0),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  static Widget buildhoteladress(hoteladress) {
    return Text(
      "$hoteladress",
      style: TextStyle(color: Color.fromARGB(255, 13, 114, 255), fontSize: 14, fontWeight: FontWeight.w500),
    );
  }
}
