import 'package:flutter/material.dart';
import 'package:healthapp/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                    'Profile',
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
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Gender',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AvenirNext',
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Male',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'AvenirNext',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
              child: Divider()),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Date of Birth',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AvenirNext',
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        '01/01/1991',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'AvenirNext',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
              child: Divider()),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AvenirNext',
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        '160 cm',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'AvenirNext',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
              child: Divider()),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Weight',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AvenirNext',
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        '55 kg',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'AvenirNext',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
              child: Divider()),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Other Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AvenirNext',
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        '',
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'AvenirNext',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
              child: Divider()),
        ],
      ),
    );
  }
}
