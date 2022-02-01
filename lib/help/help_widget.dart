import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpWidget extends StatefulWidget {
  const HelpWidget({Key key}) : super(key: key);

  @override
  _HelpWidgetState createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF002B3F),
        automaticallyImplyLeading: true,
        title: Text(
          'Help',
          style: FlutterFlowTheme.title1,
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: FlutterFlowTheme.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                      child: Text(
                        'Frequently asked questions',
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.customColor2,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 750,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          '1.\tWhat is the goal of Viria?\n\nViria is a company whose main goal is to make as many people as possible aware of recycling and environmental issues. \n\n2.\tWhat will happen to the waste that is thrown into the boxes?\n\nThe bottles and other glass containers will be sorted, crushed and melted. The recycled glass will be used to make various glass containers. Cardboard packaging will be recycled into pulp that will in turn be used to make paper, cardboard packaging or toilet paper. The cans will be shredded, melted and purified and will be used to manufacture other cans or car \nparts. \n\n3.\tHow to start sorting?\n\nLook for a box near you thanks to the Box Map available in the application. Go to the box and enter in the application the type of waste you put there. Once this is done, take a picture of your waste and put it in the box. You will receive within 24-48 hours the points corresponding to your waste. You can then exchange them for gift cards. \n\n4.\tWhere can I find the boxes?\n\nLook in the \"Box Map\" tab to see if there are any boxes near your location. \n',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.dark900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(125, 20, 0, 0),
                      child: Text(
                        'Contact',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.customColor2,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          'E-Mail Adress : \n\nInstagram : ',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.dark900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
