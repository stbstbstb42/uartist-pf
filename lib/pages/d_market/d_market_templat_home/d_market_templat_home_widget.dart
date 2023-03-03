import '/backend/backend.dart';
import '/components/marketplace_d_bars/marketplace_d_bars_widget.dart';
import '/components/templates/templates_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_market_templat_home_model.dart';
export 'd_market_templat_home_model.dart';

class DMarketTemplatHomeWidget extends StatefulWidget {
  const DMarketTemplatHomeWidget({Key? key}) : super(key: key);

  @override
  _DMarketTemplatHomeWidgetState createState() =>
      _DMarketTemplatHomeWidgetState();
}

class _DMarketTemplatHomeWidgetState extends State<DMarketTemplatHomeWidget>
    with TickerProviderStateMixin {
  late DMarketTemplatHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(4.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 1.02,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(4.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(4.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DMarketTemplatHomeModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0F0C0C),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60.0, 60.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Featured',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    'Sound Engineering',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    'Graphics',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                        ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'marketplaceCategoryTest',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Singers',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 11.0,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Videomaking',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                        ),
                                  ),
                                  Text(
                                    'Music Studios',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                        ),
                                  ),
                                  Text(
                                    'Digital Marketing',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 235.0,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 0.0, 0.0),
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Container(
                                      width: 545.0,
                                      height: 215.0,
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                              ))
                                                Container(
                                                  width: 580.0,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        desktop: false,
                                                      ))
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          child: Image.asset(
                                                            'assets/images/pexels-adrien-olichon-2387532.jpg',
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFE60E11),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    30.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          32.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                    'Recommended for you',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFDDDDDD),
                                                                          fontSize:
                                                                              10.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  )),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                    'Sound like Travis Scott\nDiscover the 2k23 Collection',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Arboria',
                                                                          color:
                                                                              Color(0xFFE2E2E2),
                                                                          fontSize:
                                                                              25.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              false,
                                                                          lineHeight:
                                                                              0.99,
                                                                        ),
                                                                  )),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                'assets/images/travis-scott-road-to-utopia-outpump1-1536x1152-transformed_(1)_(6).png',
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              )
                                                  .animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation1']!)
                                                  .animateOnActionTrigger(
                                                    animationsMap[
                                                        'imageOnActionTriggerAnimation']!,
                                                  ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered = true);
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered = false);
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                  ),
                                ),
                                Container(
                                  width: 545.0,
                                  height: 215.0,
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      25.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 580.0,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      desktop: false,
                                                    ))
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        child: Image.asset(
                                                          'assets/images/pexels-adrien-olichon-2387532.jpg',
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  30.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  'New Vocal Templates for Singers',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFF333333),
                                                                        fontSize:
                                                                            10.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  'UArtist Collection 2023\nDiscover the New Collection',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arboria',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        useGoogleFonts:
                                                                            false,
                                                                        lineHeight:
                                                                            0.99,
                                                                      ),
                                                                )),
                                                              ],
                                                            ),
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
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            'assets/images/travis-scott-road-to-utopia-outpump1-1536x1152-transformed_(1)_(3).png',
                                            width: 300.0,
                                            height: 300.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation2']!),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 545.0,
                                  height: 215.0,
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      25.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 580.0,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      desktop: false,
                                                    ))
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        child: Image.asset(
                                                          'assets/images/pexels-adrien-olichon-2387532.jpg',
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF6495ED),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  30.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  'New Vocal Templates for Singers',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFDFDFDF),
                                                                        fontSize:
                                                                            10.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SelectionArea(
                                                                    child: Text(
                                                                  'UArtist Collection\nDiscover the New Collection',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Arboria',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            25.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        useGoogleFonts:
                                                                            false,
                                                                        lineHeight:
                                                                            0.99,
                                                                      ),
                                                                )),
                                                              ],
                                                            ),
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
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            'assets/images/travis-scott-road-to-utopia-outpump1-1536x1152-transformed_(1)_(5).png',
                                            width: 300.0,
                                            height: 300.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation3']!),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 4.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Hot & New',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 25.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Trending',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Container(
                                            width: 20.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1E1E1E),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_left_rounded,
                                                  color: Colors.white,
                                                  size: 12.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1E1E1E),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_rounded,
                                                color: Colors.white,
                                                size: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                height: 220.0,
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<TemplatesRecord>>(
                                  stream: queryTemplatesRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 40.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<TemplatesRecord>
                                        listViewTemplatesRecordList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          listViewTemplatesRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewTemplatesRecord =
                                            listViewTemplatesRecordList[
                                                listViewIndex];
                                        return TemplatesWidget(
                                          key: Key(
                                              'Key1hl_${listViewIndex}_of_${listViewTemplatesRecordList.length}'),
                                          productName: listViewTemplatesRecord
                                              .templateName,
                                          sellerName:
                                              listViewTemplatesRecord.seller,
                                          price: listViewTemplatesRecord.price,
                                          rating:
                                              listViewTemplatesRecord.rating,
                                          image: listViewTemplatesRecord.image,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 25.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Best selling',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Container(
                                            width: 20.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1E1E1E),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_left_rounded,
                                                  color: Colors.white,
                                                  size: 12.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1E1E1E),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_rounded,
                                                color: Colors.white,
                                                size: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                height: 220.0,
                                decoration: BoxDecoration(),
                                child: StreamBuilder<List<BestSellingRecord>>(
                                  stream: queryBestSellingRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 40.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<BestSellingRecord>
                                        listViewBestSellingRecordList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          listViewBestSellingRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewBestSellingRecord =
                                            listViewBestSellingRecordList[
                                                listViewIndex];
                                        return TemplatesWidget(
                                          key: Key(
                                              'Keyima_${listViewIndex}_of_${listViewBestSellingRecordList.length}'),
                                          productName: listViewBestSellingRecord
                                              .templateName,
                                          sellerName:
                                              listViewBestSellingRecord.seller,
                                          price:
                                              listViewBestSellingRecord.price,
                                          rating:
                                              listViewBestSellingRecord.rating,
                                          image:
                                              listViewBestSellingRecord.image,
                                        );
                                      },
                                    );
                                  },
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
              wrapWithModel(
                model: _model.marketplaceDBarsModel,
                updateCallback: () => setState(() {}),
                child: MarketplaceDBarsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
