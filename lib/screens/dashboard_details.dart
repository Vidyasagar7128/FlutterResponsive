import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapp/components/header.dart';
import 'package:webapp/controllers/menu_controller.dart';
import 'package:webapp/responsive.dart';

class DashboardDetails extends StatelessWidget {
  const DashboardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  !Responsive.isDesktop(context)
                      ? IconButton(
                          onPressed: context.read<MenuController>().controlMenu,
                          icon: const Icon(Icons.menu),
                          splashRadius: 22.0,
                        )
                      : Text(
                          'Dashboard',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                  if (!Responsive.isMobile(context))
                    Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                  const Expanded(
                    child: SearchField(),
                  ),
                  const ProfileCard(),
                ],
              ),
            ],
          )),
    );
  }
}
