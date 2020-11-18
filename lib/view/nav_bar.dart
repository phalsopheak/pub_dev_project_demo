import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:pup_dev_project_demo/view/page_a.dart';
import 'package:pup_dev_project_demo/view/page_b.dart';
import 'package:pup_dev_project_demo/view/page_c.dart';
import 'package:pup_dev_project_demo/widget/tab_bar.dart';
import '../controller/slide_controller.dart';

class NavBarPage extends StatelessWidget {
  final SlideController sc = Get.put(SlideController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderMenuContainer(
          appBarColor: Colors.orange,
          key: sc.key,
          drawerIcon: Offstage(),
          isShadow: true,
          shadowColor: Colors.grey[200],
          sliderMenuOpenOffset: 310,
          sliderMenu: Container(
            color: Colors.white,
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () => sc.key.currentState.closeDrawer(),
                  child: Text('Close'),
                ),
                RaisedButton(
                  onPressed: () => sc.key.currentState.closeDrawer(),
                  child: Text('Close'),
                ),
                RaisedButton(
                  onPressed: () => sc.key.currentState.closeDrawer(),
                  child: Text('Close'),
                ),
              ],
            ),
          ),
          sliderMain: Material(
            child: Column(
              children: [
                Container(
                  color: Colors.orange,
                  height: 60,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () => sc.key.currentState.toggle(),
                      ),
                    ],
                  ),
                ),
                Expanded(child: MyTab()),
              ],
            ),
          )),
    );
  }
}
