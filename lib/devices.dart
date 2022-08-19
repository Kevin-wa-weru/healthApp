import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/model/measures.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: primaryColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Devices',
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'AvenirNext',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: alldevices
                    .map(
                      (elemenet) => Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 130,
                            width: MediaQuery.of(context).size.width - 20,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.black54, width: 0.7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            elemenet.title,
                                            style: const TextStyle(
                                                color: primaryColor,
                                                fontFamily: 'AvenirNext',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: Text(
                                            'Info',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontFamily: 'AvenirNext',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: Text(
                                            'Info',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontFamily: 'AvenirNext',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: Text(
                                            'Info',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontFamily: 'AvenirNext',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40.0),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: SvgPicture.asset('assets/watch.svg',
                                        color: primaryColor,
                                        height: 10,
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Scan stopped',
            style: TextStyle(
                color: primaryColor,
                fontFamily: 'AvenirNext',
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Retry',
                style: TextStyle(
                    color: secondaryColor,
                    fontFamily: 'AvenirNext',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 6,
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset('assets/refresh.svg',
                    color: secondaryColor, height: 10, fit: BoxFit.fitHeight),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
