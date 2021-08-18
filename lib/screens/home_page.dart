import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:toggle_bar/toggle_bar.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> labels = ['English', 'Türkçe'];
    int counter = 0;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ToggleBar(
                labels: labels,
                textColor: Colors.white,
                selectedTextColor: Colors.black,
                selectedTabColor: Colors.lightBlueAccent,
                backgroundColor: Colors.blueAccent,
                onSelectionUpdated: (index){
                  setState(() {
                    switch(index){
                      case 0:
                        context.locale = Locale('en', 'US');
                        break;
                      case 1:
                        context.locale = Locale('tr', 'TR');
                        break;
                    }
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('hi'.tr().toString()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('how_are_you'.tr().toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
