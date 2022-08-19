import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/devices.dart';
import 'package:healthapp/history.dart';
import 'package:healthapp/model/measures.dart';
import 'package:healthapp/norifications.dart';
import 'package:healthapp/settings.dart';
import 'package:healthapp/watch_connection.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  Widget getBody() {
    List<Widget> pages = [
      const Dashboard(),
      const HistoryPage(),
      const NotificationsPage(),
      const Settings()
    ];

    return IndexedStack(
      index: currentIndex,
      children: pages,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black12,
        unselectedItemColor: primaryColor,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Transform.translate(
              offset: const Offset(0.0, 10.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset('assets/dashboard.svg',
                    color: currentIndex != 0 ? Colors.grey : primaryColor),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Transform.translate(
              offset: const Offset(0.0, 10.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset('assets/chart.svg',
                    color: currentIndex != 1 ? Colors.grey : primaryColor),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Transform.translate(
              offset: const Offset(0.0, 10.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset('assets/bell.svg',
                    color: currentIndex != 2 ? Colors.grey : primaryColor),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Transform.translate(
              offset: const Offset(0.0, 10.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset('assets/settings.svg',
                    color: currentIndex != 3 ? Colors.grey : primaryColor),
              ),
            ),
          ),
        ],
      ),
      body: getBody(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  String selectedScreen = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'HI JM!',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'AvenirNext',
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                'assets/emoji.svg',
              ),
            ),
          ],
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedScreen = 'Home';
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: selectedScreen != 'Home'
                                ? Colors.black
                                : primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedScreen = 'Statistics';
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Statistics',
                        style: TextStyle(
                            color: selectedScreen != 'Statistics'
                                ? Colors.black
                                : primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          selectedScreen == 'Home'
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                        children: allmeasures
                            .map(
                              (element) => Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Card(
                                    elevation: 2,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          20,
                                      height: 155,
                                      decoration: BoxDecoration(
                                        color: cardColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                  element.title,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'AvenirNext',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Transform.translate(
                                                offset: const Offset(0.0, 10.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        color:
                                                            Colors.transparent,
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                          element.title2,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'AvenirNext',
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 6,
                                                      ),
                                                      Container(
                                                        width: 150,
                                                        color:
                                                            Colors.transparent,
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                          element.subtitle2,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'AvenirNext',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Container(
                                                  height: 70,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                                  child: Center(
                                                    child: SizedBox(
                                                      height: 35,
                                                      width: 35,
                                                      child: SvgPicture.asset(
                                                          element.imgeUrl,
                                                          color: Colors.black,
                                                          height: 10,
                                                          fit:
                                                              BoxFit.fitHeight),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Transform.translate(
                                                offset: const Offset(0.0, 15.0),
                                                child: Container(
                                                  width: 100,
                                                  color: Colors.transparent,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                          element.tilte3,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'AvenirNext',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                          element.subtitle3,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  'AvenirNext',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Transform.translate(
                                                offset: const Offset(0.0, 15.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 4.0),
                                                  child: Container(
                                                    width: 100,
                                                    color: Colors.transparent,
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                            element.title4,
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'AvenirNext',
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                            element.subtitle4,
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'AvenirNext',
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: allstats.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 2.3),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          allstats[index].title,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'AvenirNext',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      allstats[index].measure,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'AvenirNext',
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      allstats[index].unit,
                                      style: const TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'AvenirNext',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
