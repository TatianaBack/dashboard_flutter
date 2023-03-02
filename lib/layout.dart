import 'package:dashboard_flutter/helpers/responsividade.dart';
import 'package:dashboard_flutter/widgets/large_screen.dart';
import 'package:dashboard_flutter/widgets/small_screen.dart';
import 'package:dashboard_flutter/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
