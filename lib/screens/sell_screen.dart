import 'package:flutter/material.dart';
import 'package:share_it/models/custom_text_field.dart';
import 'package:share_it/models/title_text_field.dart';
import 'package:share_it/screens/buy_screen.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  _SellScreenState createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  var feature1Controller = TextEditingController();
  var feature2Controller = TextEditingController();
  var feature3Controller = TextEditingController();
  var feature4Controller = TextEditingController();
  var feature5Controller = TextEditingController();
  var feature6Controller = TextEditingController();
  var feature7Controller = TextEditingController();
  var feature8Controller = TextEditingController();
  var feature9Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Container(
          margin: const EdgeInsets.only(right: 70),
          constraints: const BoxConstraints(maxHeight: 40),
          child: const Image(
              image: AssetImage('assets/images/compramos-tu-moto.png')),
        )),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const TitleTextField(
          text: 'Feature 1',
        ),
        CustomTextfield(
          controller: feature1Controller,
          labelText: 'Feature 1',
        ),
        const TitleTextField(
          text: 'Feature 2',
        ),
        CustomTextfield(
          controller: feature1Controller,
          labelText: 'Feature 2',
        ),
        const TitleTextField(
          text: 'Feature 3',
        ),
        CustomTextfield(
          controller: feature1Controller,
          labelText: 'Feature 3',
        ),
        const TitleTextField(
          text: 'Feature 4',
        ),
        CustomTextfield(
          controller: feature1Controller,
          labelText: 'Feature 4',
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(100, 40, 100, 0),
          height: 50,
          child: ElevatedButton(
            child: const Text(
              'SELL',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {
              // call function tass motorbike
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BuyScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
        )
      ],
    );
  }
}
