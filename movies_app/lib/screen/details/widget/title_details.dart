import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';

class TitleTextDetails extends StatelessWidget {
  var _cardController = Get.find<CardController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 280,
      left: 10,
      child: Container(
          width: gWidth / 1.2,
          height: gHeight / 9,
          child: Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value]
                .title,
            softWrap: true,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold
            ),
          ),
        ),
    );
  }
}
