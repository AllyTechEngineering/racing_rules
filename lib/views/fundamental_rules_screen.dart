import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/menu.dart';
import '../utilities/constants.dart';

class FundamentalRulesScreen extends StatefulWidget {
  const FundamentalRulesScreen({super.key});

  @override
  State<FundamentalRulesScreen> createState() => _FundamentalRulesScreenState();
}

class _FundamentalRulesScreenState extends State<FundamentalRulesScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
            ),
            iconSize: 40.0,
            onPressed: () => context.go('/'),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Fundamental Rules',
              style: TextStyle(
                // fontFamily: kFontTypeForApp,
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () => context.go('/settings_screen'),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ocean_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 25.0),
              child: ListView.separated(
                // padding: const EdgeInsets.all(8),
                itemCount: partOneMenuData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildInkWell(index);
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(
                  height: 25.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  } //Widget

  InkWell _buildInkWell(int index) {
    return InkWell(
      onTap: () {
        switch (index) {
          case 0:
            {
              _detectOnTapMethod('fundamental_rules_screen');
            }
            break;
          case 1:
            {
              _detectOnTapMethod('when_boats_meet_screen');
            }
            break;
          case 2:
            {
              _detectOnTapMethod('conduct_of_a_race');
            }
            break;
          case 3:
            {
              _detectOnTapMethod('other_req_when_racing_screen');
            }
            break;
          case 4:
            {
              _detectOnTapMethod('protest_appeals_screen');
            }
            break;
          case 5:
            {
              _detectOnTapMethod('entry_qual_screen');
            }
            break;
          case 6:
            {
              _detectOnTapMethod('race_org_screen');
            }
            break;
          case 7:
            {
              _detectOnTapMethod('fair_sailing_screen');
            }
            break;
          default:
            {
              print('Default');
            }
            break;
        } //switch
      },
      child: _containerMethod(index),
    );
  }

  Container _containerMethod(int index) {
    return Container(
      decoration: styleBoxDecoration,
      height: 65.0,
      width: 20.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 8.0, 1.0),
        child: Text(
          partOneMenuData[index],
          style: const TextStyle(
              color: Colors.white,
              fontFamily: kFontTypeForApp,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  } //Widget

  _detectOnTapMethod(String valueOfScreen) {
    print('Inside of _detectOnTapMethod');
    context.go('/$valueOfScreen');
  }
} //class
