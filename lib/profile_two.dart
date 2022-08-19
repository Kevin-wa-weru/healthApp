import 'package:flutter/material.dart';
import 'package:healthapp/constants.dart';
import 'package:numberpicker/numberpicker.dart';

class ProfileTwo extends StatefulWidget {
  const ProfileTwo({Key? key}) : super(key: key);

  @override
  State<ProfileTwo> createState() => _ProfileTwoState();
}

class _ProfileTwoState extends State<ProfileTwo> {
  int _currentIntValue = 10;
  int _currentIntValue2 = 20;
  String? selectedHeightMetric;
  String? selectedWeightMetric;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'Profile Details',
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'AvenirNext',
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width - 20,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width / 2.3,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedHeightMetric = 'cm';
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: selectedHeightMetric == 'cm'
                                      ? primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: selectedHeightMetric == 'cm'
                                          ? Colors.transparent
                                          : Colors.black54,
                                      width: 0.5)),
                              child: Center(
                                child: Text(
                                  'cm',
                                  style: TextStyle(
                                      color: selectedHeightMetric == 'cm'
                                          ? Colors.white
                                          : primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedHeightMetric = 'inch';
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: selectedHeightMetric == 'inch'
                                      ? primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: selectedHeightMetric == 'inch'
                                          ? Colors.transparent
                                          : Colors.black54,
                                      width: 0.5)),
                              child: Center(
                                child: Text(
                                  'inch',
                                  style: TextStyle(
                                      color: selectedHeightMetric == 'inch'
                                          ? Colors.white
                                          : primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      NumberPicker(
                        value: _currentIntValue,
                        minValue: 0,
                        maxValue: 200,
                        itemCount: 6,
                        step: 1,
                        haptics: true,
                        onChanged: (value) =>
                            setState(() => _currentIntValue = value),
                        selectedTextStyle: TextStyle(
                          fontFamily: 'AvenirNext',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          background: Paint()
                            ..color = secondaryColor
                            ..strokeWidth = 25
                            ..style = PaintingStyle.stroke,
                        ),
                        textStyle: const TextStyle(
                          fontFamily: 'AvenirNext',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width / 2.3,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedWeightMetric = 'kg';
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: selectedWeightMetric == 'kg'
                                      ? primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: selectedWeightMetric == 'kg'
                                          ? Colors.transparent
                                          : Colors.black54,
                                      width: 0.5)),
                              child: Center(
                                child: Text(
                                  'kg',
                                  style: TextStyle(
                                      color: selectedWeightMetric == 'kg'
                                          ? Colors.white
                                          : primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedWeightMetric = 'lbs';
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: selectedWeightMetric == 'lbs'
                                      ? primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: selectedWeightMetric == 'lbs'
                                          ? Colors.transparent
                                          : Colors.black54,
                                      width: 0.5)),
                              child: Center(
                                child: Text(
                                  'lbs',
                                  style: TextStyle(
                                      color: selectedWeightMetric == 'lbs'
                                          ? Colors.white
                                          : primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      NumberPicker(
                        value: _currentIntValue2,
                        minValue: 0,
                        maxValue: 100,
                        itemCount: 6,
                        step: 1,
                        haptics: true,
                        onChanged: (value) =>
                            setState(() => _currentIntValue2 = value),
                        selectedTextStyle: TextStyle(
                          fontFamily: 'AvenirNext',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          background: Paint()
                            ..color = secondaryColor
                            ..strokeWidth = 25
                            ..style = PaintingStyle.stroke,
                        ),
                        textStyle: const TextStyle(
                          fontFamily: 'AvenirNext',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AvenirNext',
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
