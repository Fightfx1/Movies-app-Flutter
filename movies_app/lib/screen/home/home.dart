import 'package:flutter/material.dart';

import '../home/widget/movie_card.dart';
import '../../utils/constants.dart';
import './widget/fade.dart';
import './widget/main_pic.dart';
import '../../compoments/bottomNavBar.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar : BottomBar(selectedIndex: 0),
        body: Container(
          height: gHeight,
          child: Stack(
            children: [
              MainPic(),
              FadeWidget(),
              MovieCard(),
            ],
          ),
        ),
      ),
    );
  }
}
