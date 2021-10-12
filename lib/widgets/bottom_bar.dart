import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width - (2 * 24),
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xffF6F7F8),
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(23),
      ),
      child: SalomonBottomBar(
        currentIndex: _currIndex,
        onTap: (i) => setState(() {
          _currIndex = i;
          print('index saat ini ${i}');
        }),
        items: [
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/icon_home.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Home"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_home_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/icon_email.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Messages"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_mail_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/icon_card.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Transaction"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_card_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/icon_love.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Favorites"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_love_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
        ],
      ),
    );
  }
}
