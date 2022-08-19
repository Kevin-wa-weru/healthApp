import 'package:flutter/material.dart';

class Measures {
  final String title;
  final String title2;
  final String subtitle2;
  final String tilte3;
  final String subtitle3;
  final String title4;
  final String subtitle4;
  final String imgeUrl;

  Measures(this.title, this.title2, this.subtitle2, this.tilte3, this.subtitle3,
      this.title4, this.subtitle4, this.imgeUrl);
}

List<Measures> allmeasures = [
  Measures(
      'sp02', '98%', 'Recent', '98%', 'Max', '98%', 'Min', 'assets/oxygen.svg'),
  Measures('Respiratory rate', '16rpm', 'Recent', '17rpm', 'Max', '16rpm',
      'Min', 'assets/lungs.svg'),
  Measures('Temperature', '37.0 °C', 'Recent', '37.0 °C', 'Max', '35.0 °C',
      'Min', 'assets/temparature.svg'),
  Measures('BP', '109/74mmHg', 'Recent', '112/75mmHg', 'Max', '98%',
      '109/74mmHg', 'assets/bloodpressure.svg'),
  Measures('HR', '77 bpm', 'Recent', '84 bpm', 'Max', '77 bpm', 'Min',
      'assets/heartrate.svg'),
  Measures('Sleep', '00 hour 00 mins', 'Sleeping Duration', '00 hour 00 mins',
      'Deep Sleeping', '00 hour 00 mins', 'Light Sleeping', 'assets/sleep.svg'),
];

class Statistics {
  final String title;
  final String measure;
  final String unit;
  final Color color;

  Statistics(this.title, this.measure, this.unit, this.color);
}

List<Statistics> allstats = [
  Statistics(
    'Calories',
    '720',
    'kcal',
    Colors.red,
  ),
  Statistics(
    'Steps',
    '1000',
    'steps',
    Colors.red,
  ),
  Statistics(
    'Sleep',
    '6 hr',
    'hours',
    Colors.red,
  ),
  Statistics(
    'Water',
    '2 lits',
    'liters',
    Colors.red,
  ),
  Statistics(
    'Shortcut',
    'Value',
    'unit',
    Colors.red,
  ),
  Statistics(
    'Shortcut',
    'Value',
    'unit',
    Colors.red,
  )
];

class History {
  final String date;

  History(this.date);
}

List<History> allhistory = [
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
  History('22/04/2022'),
];

class Notifications {
  final String title;
  final Color color;

  Notifications(this.title, this.color);
}

List<Notifications> allnotifications = [
  Notifications('Notification One', Colors.red),
  Notifications('Notification Two', Colors.green),
  Notifications('Notification Three', Colors.blue),
  Notifications('Notification Four', Colors.grey)
];

class Devices {
  final String title;

  Devices(this.title);
}

List<Devices> alldevices = [
  Devices(
    'Device 1',
  ),
  Devices(
    'Device 2',
  ),
];
