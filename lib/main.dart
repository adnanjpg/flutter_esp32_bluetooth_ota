import 'package:flutter/material.dart';
import 'package:flutter_ap_updater/spp_update_page.dart';

import 'ble_update_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bluetooth OTA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectPage(),
    );
  }
}

class SelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bluetooth ESP32 OTA"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                title: Text("BLE UPDATE (TEST)"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(
                            title: "ble update",
                          )));
                },
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text("BLUETOOTH UPDATE (TEST)"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SppUpdatePage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
