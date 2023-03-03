import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_sellersa_model.dart';
export 'top_sellersa_model.dart';

class TopSellersaWidget extends StatefulWidget {
  const TopSellersaWidget({Key? key}) : super(key: key);

  @override
  _TopSellersaWidgetState createState() => _TopSellersaWidgetState();
}

class _TopSellersaWidgetState extends State<TopSellersaWidget> {
  late TopSellersaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopSellersaModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 139.0,
        decoration: BoxDecoration(),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pexels-kyle-loftus-3379937.jpg',
                              width: 170.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = true);
                        setState(() {
                          FFAppState().showit = true;
                        });
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = false);
                        setState(() {
                          FFAppState().showit = false;
                        });
                      }),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Video Editing',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Reeeload Productions',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pexels-davis-snchez-3916376.jpg',
                              width: 170.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = true);
                        setState(() {
                          FFAppState().showit = true;
                        });
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = false);
                        setState(() {
                          FFAppState().showit = false;
                        });
                      }),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Recording Studio',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Studio D7',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pexels-matthias-groeneveld-4200745.jpg',
                              width: 170.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = true);
                        setState(() {
                          FFAppState().showit = true;
                        });
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = false);
                        setState(() {
                          FFAppState().showit = false;
                        });
                      }),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Cover Design',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Luigi Leggieri',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pexels-cottonbro-studio-5077069.jpg',
                              width: 170.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = true);
                        setState(() {
                          FFAppState().showit = true;
                        });
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = false);
                        setState(() {
                          FFAppState().showit = false;
                        });
                      }),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Spotify Promo',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Trap Global',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pexels-cottonbro-studio-5077069.jpg',
                              width: 170.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = true);
                        setState(() {
                          FFAppState().showit = true;
                        });
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = false);
                        setState(() {
                          FFAppState().showit = false;
                        });
                      }),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Songwriting',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Lil Banki',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w300,
                          ),
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
