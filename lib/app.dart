import 'package:choclist_web/pages/components/header.dart';
import 'package:choclist_web/responsive.dart';
import 'package:choclist_web/utils/colors.dart';
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: AppColors.firstColor,
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                ),
              ],
              title: Image(
                height: 100,
                image: AssetImage("assets/images/cl_tp.png"),
              ),
            )
          : PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 1000),
              child: Header(_opacity),
            ),
      body: Container(
        color: AppColors.firstColor,
      ),
    );
  }
}
