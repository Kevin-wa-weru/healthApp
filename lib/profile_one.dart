import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/constants.dart';

class ProfileOne extends StatefulWidget {
  const ProfileOne({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileOneState createState() => _ProfileOneState();
}

class _ProfileOneState extends State<ProfileOne> {
  DateTime? _selectedDate;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            const Text(
              'Gender',
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'AvenirNext',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedGender = 'male';
                          });
                        },
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              color: selectedGender == 'male'
                                  ? primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selectedGender == 'male'
                                      ? Colors.transparent
                                      : Colors.black54,
                                  width: 0.7)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: SvgPicture.asset('assets/male.svg',
                                    color: Colors.black,
                                    height: 10,
                                    fit: BoxFit.fitHeight),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'AvenirNext',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedGender = 'female';
                          });
                        },
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              color: selectedGender == 'female'
                                  ? primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selectedGender == 'female'
                                      ? Colors.transparent
                                      : Colors.black54,
                                  width: 0.7)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: SvgPicture.asset('assets/female.svg',
                                    color: Colors.black,
                                    height: 10,
                                    fit: BoxFit.fitHeight),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'AvenirNext',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text('Date of birth',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                  fontFamily: 'AvenirNext',
                  fontSize: 20,
                )),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Transform.translate(
                      offset: const Offset(0.0, 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Day',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'AvenirNext',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Month',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'AvenirNext',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Year',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'AvenirNext',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    DatePickerWidget(
                      looping: false,
                      firstDate: DateTime.now(),
                      dateFormat: "dd/MMMM/yyyy",
                      onChange: (DateTime newDate, _) {
                        setState(() {
                          _selectedDate = newDate;
                        });
                        // ignore: avoid_print
                        print(_selectedDate);
                      },
                      pickerTheme: const DateTimePickerTheme(
                        backgroundColor: Colors.transparent,
                        titleHeight: 20,
                        itemTextStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        dividerColor: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirNext',
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
