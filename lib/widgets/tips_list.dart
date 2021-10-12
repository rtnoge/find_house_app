// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:find_house_app/models/tips.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class TipsList extends StatelessWidget {
  final Tips _tips;

  TipsList(this._tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            children: [Image.asset(_tips.imgUrl)],
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _tips.tipsTitle,
              style: blackText.copyWith(fontSize: 18),
            ),
            SizedBox(width: 4),
            Text(
              _tips.dateUpdate,
              style: greyText,
            )
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: grey,
            ))
      ],
    );
  }
}
