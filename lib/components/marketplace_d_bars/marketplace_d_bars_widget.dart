import '/components/marketplace_home_app_bar/marketplace_home_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_d_bars_model.dart';
export 'marketplace_d_bars_model.dart';

class MarketplaceDBarsWidget extends StatefulWidget {
  const MarketplaceDBarsWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceDBarsWidgetState createState() => _MarketplaceDBarsWidgetState();
}

class _MarketplaceDBarsWidgetState extends State<MarketplaceDBarsWidget>
    with TickerProviderStateMixin {
  late MarketplaceDBarsModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation14': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation15': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.8,
          end: 1.0,
        ),
      ],
    ),
    'circleImageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 1.2,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceDBarsModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF181414),
            border: Border.all(
              color: Colors.transparent,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/Logopng.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'DStudioHome',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 100),
                                          ),
                                        },
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.home_filled,
                                                    color: Color(0xFF414141),
                                                    size: 25.0,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.home_filled,
                                                    color: Colors.white,
                                                    size: 25.0,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation1']!,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onEnter: ((event) async {
                                    setState(() => _model.homeHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation1'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation2'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation2']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() => _model.homeHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation1'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation1']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation2'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation2']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 54.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Home',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation2']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 20.0,
                              thickness: 1.0,
                              color: Color(0xFF333333),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'DStudioProjectList',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.folder_rounded,
                                                    color: Color(0xFF414141),
                                                    size: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.folder_rounded,
                                                    color: Colors.white,
                                                    size: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation3']!,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onEnter: ((event) async {
                                    setState(
                                        () => _model.projectsHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation3'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation3']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation4'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation4']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(
                                        () => _model.projectsHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation3'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation3']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation4'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation4']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 65.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Projects',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation4']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-studio-display-60.png',
                                                  width: 22.0,
                                                  height: 23.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-studio-display-60_(1).png',
                                                  width: 22.0,
                                                  height: 23.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation5']!,
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    setState(() => _model.localHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation5'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation5']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation6'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation6']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() => _model.localHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation5'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation5']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation6'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation6']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 65.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Local files',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation6']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-icloud-50.png',
                                                  width: 25.0,
                                                  height: 25.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-icloud-50_(2).png',
                                                  width: 25.0,
                                                  height: 25.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation7']!,
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    setState(() => _model.cloudHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation7'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation7']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation8'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation8']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() => _model.cloudHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation7'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation7']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation8'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation8']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 54.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Cloud',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation8']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 20.0,
                              thickness: 1.0,
                              color: Color(0xFF333333),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-calendario-64.png',
                                                  width: 30.0,
                                                  height: 30.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-calendario-64_(1).png',
                                                  width: 30.0,
                                                  height: 30.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation9']!,
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    setState(
                                        () => _model.calendarHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation9'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation9']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation10'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation10']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(
                                        () => _model.calendarHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation9'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation9']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation10'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation10']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 65.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Calendar',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation10']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-messaggio-di-chat-50_(1).png',
                                                  width: 22.0,
                                                  height: 22.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-messaggio-di-chat-50_(2).png',
                                                  width: 22.0,
                                                  height: 22.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation11']!,
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    setState(() => _model.chatHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation11'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation11']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation12'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation12']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() => _model.chatHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation11'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation11']!
                                          .controller
                                          .reverse();
                                    }
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation12'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation12']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 48.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xD8282828),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Chat',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        ],
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation12']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00171717),
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/icons8-settings-50.png',
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2E2E2E),
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/icons8-settings-50_(1).png',
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation13']!,
                                  ),
                                ],
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.settingsHovered = true);
                                FFAppState().update(() {
                                  FFAppState().DESKStudioSettings = true;
                                });
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation13'] !=
                                    null) {
                                  await animationsMap[
                                          'containerOnActionTriggerAnimation13']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                              }),
                              onExit: ((event) async {
                                setState(() => _model.settingsHovered = false);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation13'] !=
                                    null) {
                                  await animationsMap[
                                          'containerOnActionTriggerAnimation13']!
                                      .controller
                                      .reverse();
                                }
                                FFAppState().update(() {
                                  FFAppState().DESKStudioSettings = false;
                                });
                              }),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/icons8-assistenza-clienti-50.png',
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/icons8-assistenza-clienti.gif',
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation14']!,
                                  ),
                                ],
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.supportHovered = true);
                                FFAppState().update(() {
                                  FFAppState().DESKStudioSupport = true;
                                });
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation14'] !=
                                    null) {
                                  await animationsMap[
                                          'containerOnActionTriggerAnimation14']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                              }),
                              onExit: ((event) async {
                                setState(() => _model.supportHovered = false);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation14'] !=
                                    null) {
                                  await animationsMap[
                                          'containerOnActionTriggerAnimation14']!
                                      .controller
                                      .reverse();
                                }
                                FFAppState().update(() {
                                  FFAppState().DESKStudioSupport = false;
                                });
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Stack(
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 2.0),
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'containerOnActionTriggerAnimation15']!,
                            ),
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 2.0),
                                        child: Container(
                                          width: 25.0,
                                          height: 25.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'circleImageOnActionTriggerAnimation']!,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onEnter: ((event) async {
                          setState(() => _model.accountHovered = true);
                        }),
                        onExit: ((event) async {
                          setState(() => _model.accountHovered = false);
                        }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: wrapWithModel(
            model: _model.marketplaceHomeAppBarModel,
            updateCallback: () => setState(() {}),
            child: MarketplaceHomeAppBarWidget(),
          ),
        ),
      ],
    );
  }
}
