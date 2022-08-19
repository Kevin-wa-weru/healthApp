import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/devices.dart';
import 'package:healthapp/model/measures.dart';
import 'package:healthapp/watch_connection.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

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
                  'Notifications',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: allnotifications
                .map(
                  (elemenet) => Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.black54, width: 0.7)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          color: elemenet.color,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        elemenet.title,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'AvenirNext',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
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
                                  padding: EdgeInsets.only(left: 22.0),
                                  child: Text(
                                    'Notification Text',
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
                                  padding: EdgeInsets.only(left: 22.0),
                                  child: Text(
                                    'Notification Text',
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
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
