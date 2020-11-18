import 'package:flutter/material.dart';
import 'package:pup_dev_project_demo/view/page_a.dart';
import 'package:pup_dev_project_demo/view/page_b.dart';
import 'package:pup_dev_project_demo/view/page_c.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.orange,
          tabs: [
            Tab(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.green),
              ),
            ),
            Tab(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.green),
              ),
            ),
            Tab(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            PageA(),
            PageB(),
            PageC(),
          ],
        ),
      ),
    );
  }
}
