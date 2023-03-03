import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'studio_nav_bar_m_b_model.dart';
export 'studio_nav_bar_m_b_model.dart';

class StudioNavBarMBWidget extends StatefulWidget {
  const StudioNavBarMBWidget({Key? key}) : super(key: key);

  @override
  _StudioNavBarMBWidgetState createState() => _StudioNavBarMBWidgetState();
}

class _StudioNavBarMBWidgetState extends State<StudioNavBarMBWidget>
    with TickerProviderStateMixin {
  late StudioNavBarMBModel _model;

  var hasContainerTriggered1 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 380.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 360.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(70.5, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 40.ms,
          duration: 180.ms,
          begin: 1.0,
          end: 0.8,
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 180.ms,
          duration: 180.ms,
          begin: 1.0,
          end: 1.25,
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 0.125,
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: -0.25,
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
    _model = createModel(context, () => StudioNavBarMBModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (FFAppState().MBAccountSelected)
              Container(
                width: 270.9,
                height: 117.5,
                decoration: BoxDecoration(
                  color: Color(0xFF151515),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 35.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 218.0,
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xCA242424),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 0.0, 2.0),
                                          child: Container(
                                            width: 70.0,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x69646464),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'containerOnActionTriggerAnimation2']!,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 0.0, 2.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                            .MBAccountSelected =
                                                        false;
                                                  });
                                                },
                                                child: Container(
                                                  width: 70.0,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Studio',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFC9DC13),
                                                                  fontSize: 9.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 2.0, 2.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'containerOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'containerOnActionTriggerAnimation2']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }

                                                  context.pushNamed(
                                                    'marketplaceHome',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 50),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 70.0,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Marketplace',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 9.0,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 2.0, 2.0),
                                              child: Container(
                                                width: 70.0,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Academy',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 9.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                  ],
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
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.account_circle_rounded,
                              color: Color(0xFF676767),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.message_rounded,
                              color: Color(0xFF676767),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.settings_rounded,
                              color: Color(0xFF676767),
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation1']!,
                  hasBeenTriggered: hasContainerTriggered1),
          ],
        ),
        Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: Color(0xFF151515),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  if (!FFAppState().MBStudioHome)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.home_outlined,
                        color: Color(0xFF797979),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().MBStudioHome = true;
                          FFAppState().MBStudioProjects = false;
                          FFAppState().MBStudioCreate = false;
                          FFAppState().MBStudioCloud = false;
                          FFAppState().MBStudioLogo = false;
                        });
                      },
                    ),
                  if (FFAppState().MBStudioHome)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                ],
              ),
              Stack(
                children: [
                  if (!FFAppState().MBStudioProjects)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.snippet_folder_outlined,
                        color: Color(0xFF797979),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().MBStudioHome = false;
                          FFAppState().MBStudioProjects = true;
                          FFAppState().MBStudioCreate = false;
                          FFAppState().MBStudioCloud = false;
                          FFAppState().MBStudioLogo = false;
                        });
                      },
                    ),
                  if (FFAppState().MBStudioProjects)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.snippet_folder,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 45.0,
                  fillColor: FlutterFlowTheme.of(context).primaryColor,
                  icon: Icon(
                    Icons.add_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().MBStudioHome = false;
                      FFAppState().MBStudioProjects = false;
                      FFAppState().MBStudioCreate = true;
                      FFAppState().MBStudioCloud = false;
                      FFAppState().MBStudioLogo = false;
                    });
                  },
                ).animateOnActionTrigger(
                  animationsMap['iconButtonOnActionTriggerAnimation']!,
                ),
              ),
              Stack(
                children: [
                  if (!FFAppState().MBStudioCloud)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.cloud_queue_rounded,
                        color: Color(0xFF797979),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().MBStudioHome = false;
                          FFAppState().MBStudioProjects = false;
                          FFAppState().MBStudioCreate = false;
                          FFAppState().MBStudioCloud = true;
                          FFAppState().MBStudioLogo = false;
                        });
                      },
                    ),
                  if (FFAppState().MBStudioCloud)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.cloud_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                ],
              ),
              InkWell(
                onTap: () async {
                  if (FFAppState().MBStudioLogo) {
                    if (animationsMap['containerOnActionTriggerAnimation1'] !=
                        null) {
                      animationsMap['containerOnActionTriggerAnimation1']!
                          .controller
                          .reverse();
                    }
                    if (animationsMap['imageOnActionTriggerAnimation'] !=
                        null) {
                      await animationsMap['imageOnActionTriggerAnimation']!
                          .controller
                          .reverse();
                    }
                    FFAppState().update(() {
                      FFAppState().MBStudioLogo = false;
                    });
                  } else {
                    FFAppState().update(() {
                      FFAppState().MBStudioLogo = true;
                    });
                    if (animationsMap['containerOnActionTriggerAnimation1'] !=
                        null) {
                      setState(() => hasContainerTriggered1 = true);
                      SchedulerBinding.instance.addPostFrameCallback(
                          (_) async => animationsMap[
                                  'containerOnActionTriggerAnimation1']!
                              .controller
                              .forward(from: 0.0));
                    }
                    if (animationsMap['imageOnActionTriggerAnimation'] !=
                        null) {
                      animationsMap['imageOnActionTriggerAnimation']!
                          .controller
                          .forward(from: 0.0);
                    }
                  }
                },
                child: Container(
                  width: 50.0,
                  height: 60.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Logopng.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ).animateOnActionTrigger(
                        animationsMap['imageOnActionTriggerAnimation']!,
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Stack(
                          children: [
                            if (FFAppState().MBAccountSelected)
                              Icon(
                                Icons.account_circle_rounded,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            if (!FFAppState().MBAccountSelected)
                              Icon(
                                Icons.account_circle_outlined,
                                color: Color(0xFF797979),
                                size: 24.0,
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
      ],
    );
  }
}
