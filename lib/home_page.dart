import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/featured_widget.dart';
import 'package:flutter_task/widgets/group_listview_widget.dart';

import 'widgets/custom_appbar.dart';
import 'widgets/flutter_egypt.dart';
import 'widgets/image_widget.dart';
import 'widgets/joined_and_leave_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWidget(),
            FlutterEgyptWidget(),
            JoinedAndInviteButton(),
            GroupListviewWidget(),
            FeatureWidget()
          ],
        ),
      ),
    );
  }

}
