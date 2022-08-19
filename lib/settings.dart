import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/devices.dart';
import 'package:healthapp/profile.dart';
import 'package:healthapp/watch_connection.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: SizedBox(
            height: 50,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'AvenirNext',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            PopupMenuButton(
              elevation: 2,
              icon: SizedBox(
                height: 29,
                width: 20,
                child: SvgPicture.asset(
                  'assets/threedots.svg',
                  color: Colors.black,
                ),
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WatchConnection()),
                          );
                        },
                        child: const Text(
                          "Connect Watch",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: const [
                      Text("Edit shortcut",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                      Divider()
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DevicesPage()),
                          );
                        },
                        child: const Text("Devices",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'AvenirNext',
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ),
                      const Divider()
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(40.0, -45.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()),
                          );
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  'assets/edits.svg',
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0.0, -35.0),
                      child: const Text(
                        'JM',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0.0, -30.0),
                      child: const Text(
                        'jm@gmail.com',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/person.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/bell.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/eyes.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Appearance',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/shield.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Privacy & Security',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/sound.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Sound',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                        visualDensity: const VisualDensity(vertical: -3),
                        leading: Transform.translate(
                          offset: const Offset(18.0, 0.0),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/earth.svg',
                              color: primaryColor,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Language',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'AvenirNext',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Transform.translate(
                          offset: const Offset(-35.0, 0.0),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
