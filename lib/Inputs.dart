// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'MyWidget.dart';
import 'cinsiyet.dart';

class Inputs extends StatefulWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  late String selectIcon = '';
  late double smoking = 0;
  late double spor = 1;
  late double boy = 170;
  late double kg =75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesaplayıcı'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyWidget(
                    renk: Colors.white,
                    child: buildRow('Boy'),
                  ),
                ),
                Expanded(
                  child: MyWidget(renk: Colors.white, child: buildRow('Kilo')),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyWidget(
              renk: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde Kaç Saat  Spor  Yapıyorsunuz.',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('${spor.round()}',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Slider(
                    min: 1,
                    max: 5,
                    value: spor,
                    onChanged: (double value) {
                      setState(
                        () {
                          spor = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyWidget(
              renk: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde  Kaç  Sigara  İçiyorsunuz.',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('${smoking.round()}',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Slider(
                    min: 0,
                    max: 30,
                    value: smoking,
                    onChanged: (double value) {
                      setState(
                        () {
                          smoking = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectIcon = 'Erkek';
                        },
                      );
                    },
                    child: MyWidget(
                      renk: selectIcon == 'Erkek'
                          ? Colors.lightBlue.shade100
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: FontAwesomeIcons.venus,
                        data: 'Erkek',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIcon = 'Kadın';
                      });
                    },
                    child: MyWidget(
                      renk: selectIcon == 'Kadın'
                          ? Colors.lightBlue.shade100
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: FontAwesomeIcons.mars,
                        data: 'Kadın',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Row buildRow(
    label,
  ) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label,
            style: TextStyle(fontSize: 30, color: Colors.black54),
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label=='Boy'?'${boy.round()}':kg.toString(),
            style: TextStyle(
                fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              child: Icon(FontAwesomeIcons.plus),
              onPressed: () {
                setState(() {
                 label=='Boy'?boy++:kg++;
                });
              },
            ),
            OutlineButton(
              child: Icon(FontAwesomeIcons.minus),
              onPressed: () {
                setState(() {
                  label=='Boy'?boy--:kg--;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
