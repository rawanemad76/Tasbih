import 'package:flutter/material.dart';

class Azkar extends StatefulWidget {
  const Azkar({super.key});

  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  List<String> text = ["سبحان الله", "الحمد لله ", "الله اكبر "];
  int counter = 0;
  int index = 0;
  int round = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(
          "assets/images/red_appBar.jpg",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        title: Text(
          "فذكر ان نفعت الذكرى",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/red_backGround.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "${text[index]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "عدد التسبيحات",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "$counter",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(30),
                    side: BorderSide(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      sabeh();
                    });
                  },
                  child: Text(
                    "اضغط",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            reset();
                          });
                        },
                        child: Text(
                          " البدء من جديد ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        )),
                    SizedBox(
                      width: 100,
                    ),
                    Row(
                      children: [
                        Text(
                          "$round ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          " : رقم الدورة",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sabeh() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
    }

    if (index == 3) {
      index = 0;
      round++;
    }
  }

  void reset() {
    counter = 0;
    round = 0;
    index = 0;
  }
}

