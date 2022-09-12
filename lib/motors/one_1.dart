import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:motors/app/colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'bot.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

int count = 0;
double _sliderDiscreteValue = 20;

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bacraunt,
        appBar: AppBar(
          backgroundColor: bacraunt,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Diary',
                style: TextStyle(color: black, fontSize: 33),
              ),
              Row(
                children: [
                  const Icon(
                    arrowright,
                    color: black,
                  ),
                  Row(
                    children: const [
                      Icon(
                        calendar,
                        color: black,
                        size: 22,
                      ),
                      Text(
                        '15 May',
                        style: TextStyle(color: black, fontSize: 17),
                      ),
                    ],
                  ),
                  const Icon(
                    arrowleft,
                    color: black,
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text1,
                  Row(
                    children: const [
                      Text(
                        'Details',
                        style: TextStyle(fontSize: 20, color: blue),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 28,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 450,
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(110),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              const Text("sakmfwn"),
                              Row(
                                children: const [
                                  Icon(Icons.add_shopping_cart_sharp),
                                  Text("1127 kcal")
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              const Text("sakmfwn"),
                              Row(
                                children: const [
                                  Icon(Icons.add_shopping_cart_sharp),
                                  Text("1127 kcal")
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                            customWidths:
                                CustomSliderWidths(progressBarWidth: 10)),
                        min: 10,
                        max: 28,
                        initialValue: 15,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text("Carbs"),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 30,
                            height: 5,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("12g left")
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Carbs"),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 30,
                            height: 5,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("12g left")
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Carbs"),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 30,
                            height: 5,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("12g left")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Meals today ',
                      style: TextStyle(fontSize: 25, color: black)),
                  Row(
                    children: const [
                      Text(
                        'Costomize',
                        style: TextStyle(fontSize: 20, color: blue),
                      ),
                      Icon(Icons.arrow_forward_rounded, size: 28)
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  NewWidget(),
                  NewWidget(),
                  NewWidget(),
                  NewWidget(),
                  NewWidget(),
                  NewWidget()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Body measurement ',
                        style: TextStyle(fontSize: 25, color: black)),
                    Row(
                      children: const [
                        Text(
                          'Today',
                          style: TextStyle(fontSize: 20, color: blue),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 28,
                        )
                      ],
                    ),
                  ]),
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blue,
            items: const <Widget>[
              Icon(Icons.auto_stories, size: 35),
              Icon(Icons.sentiment_very_satisfied, size: 35),
              Icon(Icons.add, size: 35),
              Icon(Icons.apple, size: 35),
              Icon(Icons.perm_identity_outlined, size: 35),
            ],
            onTap: (index) {
              //Handle button tap

              count = index;
            }));
  }
}
