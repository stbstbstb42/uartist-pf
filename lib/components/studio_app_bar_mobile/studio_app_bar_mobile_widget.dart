import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'studio_app_bar_mobile_model.dart';
export 'studio_app_bar_mobile_model.dart';

class StudioAppBarMobileWidget extends StatefulWidget {
  const StudioAppBarMobileWidget({Key? key}) : super(key: key);

  @override
  _StudioAppBarMobileWidgetState createState() =>
      _StudioAppBarMobileWidgetState();
}

class _StudioAppBarMobileWidgetState extends State<StudioAppBarMobileWidget> {
  late StudioAppBarMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudioAppBarMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Color(0x000F0C0C),
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00181818),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/Logopng.png',
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'uartist',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00181818),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GradientText(
                                        'studio',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          Colors.white
                                        ],
                                        gradientDirection:
                                            GradientDirection.btt,
                                        gradientType: GradientType.linear,
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 2.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EF393C),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
