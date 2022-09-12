import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
            width: 200,
            height: 250,
            decoration: const BoxDecoration(
              color: Color(0xffF9998E),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Column(
              children: const [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Breakfast",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Bread",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Peanut Puter",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Apple",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  "525 kcal",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            )),
        Container(
          width: 90,
          height: 90,
          decoration: const BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(150)),
          ),
          child: null,
        ),
        Icon(
          Icons.airplanemode_inactive_outlined,
          size: 70,
        )
      ]),
    );
  }
}
