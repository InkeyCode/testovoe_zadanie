import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Final_Screen extends StatelessWidget {
  const Final_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        height: 88,
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 27, bottom: 8),
          child: SizedBox(
            height: 48,
            width: MediaQuery.of(context).size.width / 1.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'main');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 13, 114, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Супер",
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: const Color.fromARGB(255, 246, 246, 249),
                width: 94,
                height: 94,
                child: Center(
                  child: Image.asset(
                    'assets/images/final.png',
                    scale: 3,
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Gap(32),
            const Text(
              "Ваш заказ принят в работу",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const Gap(20),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                textScaleFactor: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 130, 135, 150), fontSize: 16),
              ),
            )
          ],
        ),
      ),
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
          "Заказ оплачен",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
