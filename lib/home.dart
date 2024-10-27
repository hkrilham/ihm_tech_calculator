import 'package:flutter/material.dart';
import 'package:ihm_tech_calculator/button.dart';
import 'package:ihm_tech_calculator/math.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void no(no) {
    setState(() {
      calValue == "0" ? calValue = no : calValue = calValue + no;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  calValue,
                  style: TextStyle(fontSize: 70),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyBoton(
                    name: 'AC',
                    value: () {
                      setState(() {
                        calValue = '0';
                      });
                    },
                  ),
                  MyBoton(
                    name: 'C',
                    value: () {
                      setState(() {
                        calValue = calValue.length == 1
                            ? "0"
                            : calValue =
                                calValue.substring(0, calValue.length - 1);
                      });
                    },
                  ),
                  MyBoton(
                    name: '%',
                    value: () {
                      setState(() {
                        num per = num.parse(calValue);
                        per = per / 100;
                        calValue = per.toString();
                      });
                    },
                  ),
                  MyBoton(
                    colors: Colors.orange,
                    name: '÷',
                    value: () {
                      setState(() {
                        calValue = calValue + '÷';
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyBoton(
                    name: '7',
                    value: () => no('7'),
                  ),
                  MyBoton(
                    name: '8',
                    value: () => no('8'),
                  ),
                  MyBoton(
                    name: '9',
                    value: () => no('9'),
                  ),
                  MyBoton(
                    colors: Colors.orange,
                    name: 'x',
                    value: () => no('x'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyBoton(
                    name: '4',
                    value: () => no('4'),
                  ),
                  MyBoton(
                    name: '5',
                    value: () => no('5'),
                  ),
                  MyBoton(
                    name: '6',
                    value: () => no('6'),
                  ),
                  MyBoton(
                    colors: Colors.orange,
                    name: '-',
                    value: () {
                      setState(() {
                        calValue = calValue + '-';
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyBoton(
                    name: '1',
                    value: () => no('1'),
                  ),
                  MyBoton(
                    name: '2',
                    value: () => no('2'),
                  ),
                  MyBoton(
                    name: '3',
                    value: () => no('3'),
                  ),
                  MyBoton(
                    colors: Colors.orange,
                    name: '+',
                    value: () {
                      setState(() {
                        calValue = calValue + '+';
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyBoton(
                    name: '0',
                    value: () => no('0'),
                  ),
                  MyBoton(
                    name: '.',
                    value: () {
                      setState(() {
                        calValue = calValue + '.';
                      });
                    },
                  ),
                  MyBoton(
                    name: '+/-',
                    value: () {
                      setState(() {
                        num pos = num.parse(calValue);
                        num neg = pos * -1;

                        calValue = neg.toString();
                      });
                    },
                  ),
                  MyBoton(
                    colors: Colors.orange,
                    name: '=',
                    value: () {
                      setState(() {
                        calValue = result().toString();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
