import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'studio_profile_model.dart';
export 'studio_profile_model.dart';

class StudioProfileWidget extends StatefulWidget {
  const StudioProfileWidget({Key? key}) : super(key: key);

  @override
  _StudioProfileWidgetState createState() => _StudioProfileWidgetState();
}

class _StudioProfileWidgetState extends State<StudioProfileWidget> {
  late StudioProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudioProfileModel());

    _model.searchBarController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 122.2,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              alignment: AlignmentDirectional(0.0, 0.5),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 12.0, 25.0, 0.0),
                child: TextFormField(
                  controller: _model.searchBarController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.searchBarController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Search...',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2,
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x0022282F),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF212121),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 2.0, 24.0, 2.0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 12.0,
                    ),
                    suffixIcon: _model.searchBarController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.searchBarController?.clear();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 20.0,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF686868),
                        fontSize: 14.0,
                      ),
                  validator:
                      _model.searchBarControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 148.1,
                decoration: BoxDecoration(
                  color: Color(0xFF6619FF),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: AlignmentDirectional(0.0, 0.3999999999999999),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.84, 0.36),
                      child: CircularPercentIndicator(
                        percent: 0.27,
                        radius: 35.0,
                        lineWidth: 10.0,
                        animation: true,
                        progressColor: Colors.white,
                        backgroundColor: Color(0xFF4900D8),
                        center: Text(
                          '27%',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.19),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Cloud Storage',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 17.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '274 GB / 1000 GB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xC9FFFFFF),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, -0.64),
                      child: Icon(
                        Icons.cloud_upload,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 171.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF212121),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.all_inbox_rounded,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Progetti',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF212121),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.text_format_rounded,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Testi',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF212121),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.text_format_rounded,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Testi',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF212121),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.text_format_rounded,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Testi',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF212121),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.all_inbox_rounded,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Progetti',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF212121),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.text_format_rounded,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Testi',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF212121),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.text_format_rounded,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Testi',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF212121),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.text_format_rounded,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Testi',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
