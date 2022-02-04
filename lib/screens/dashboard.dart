import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapp/components/side_menu.dart';
import 'package:webapp/controllers/menu_controller.dart';
import 'package:webapp/responsive.dart';
import 'package:webapp/screens/dashboard_body.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardBody(),
            ),
          ],
        ),
      ),
    );
  }
}
