import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmShopWidget extends StatefulWidget {
  const ConfirmShopWidget({Key key}) : super(key: key);

  @override
  _ConfirmShopWidgetState createState() => _ConfirmShopWidgetState();
}

class _ConfirmShopWidgetState extends State<ConfirmShopWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF002B3F),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
    );
  }
}
