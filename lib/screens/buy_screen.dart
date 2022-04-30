import 'package:flutter/material.dart';
import 'dart:developer';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  final int _price = 10000;
  String _priceString = '';
  final String _stateMoto = 'NEW';
  final String _cilindrada = 'V50 125cc';
  final String _brand = 'BMW';
  final String _category = 'Vintage';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _priceString = _price.toString() + '€';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Container(
          constraints: const BoxConstraints(maxHeight: 40),
          child: const Image(
              image: AssetImage('assets/images/mundimoto-logo2.png')),
        )),
      ),
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(bottom: 100),
      height: size.height,
      child: Container(
          padding: const EdgeInsets.all(30),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height * 0.80,
            minWidth: MediaQuery.of(context).size.width * 0.75,
            minHeight: MediaQuery.of(context).size.height * 0.65,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/moto2.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      _priceString,
                                      style: const TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                  const Spacer(flex: 2),
                                  Text(
                                    _stateMoto,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  const Spacer(flex: 1)
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.2)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    _brand,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  const Spacer(flex: 1),
                                  Text(
                                    _cilindrada,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  const Spacer(flex: 1),
                                  Text(
                                    _category,
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  const Spacer(flex: 1)
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ))),
    );
  }

  double space = 45.0;

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 120,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              width: space,
              height: space,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      // changes position of shadow
                    ),
                  ]),
              child: const Center(
                  child: Icon(Icons.clear,
                      color: Colors
                          .red)) //IconButton(onPressed: swipeNegative, icon: Icon(Icons.clear, color: Colors.red,))),
              ),
          Container(
            width: space,
            height: space,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    // changes position of shadow
                  ),
                ]),
            child: const Center(
                child: Icon(
              Icons.favorite,
              color: Colors.blue,
            )),
          ),
          Container(
            width: space,
            height: space,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    // changes position of shadow
                  ),
                ]),
            child: const Center(child: Icon(Icons.check, color: Colors.green)),
          )
        ]),
      ),
    );
  }

  void swipeNegative() {
    log('NEGATIVE');
  }

  void swipePositive() {
    log('POSITIVE');
  }
}
