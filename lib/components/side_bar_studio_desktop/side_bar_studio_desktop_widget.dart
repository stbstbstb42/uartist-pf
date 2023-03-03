import '/components/studio_app_bar_desktop_test/studio_app_bar_desktop_test_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar_studio_desktop_model.dart';
export 'side_bar_studio_desktop_model.dart';

class SideBarStudioDesktopWidget extends StatefulWidget {
  const SideBarStudioDesktopWidget({Key? key}) : super(key: key);

  @override
  _SideBarStudioDesktopWidgetState createState() =>
      _SideBarStudioDesktopWidgetState();
}

class _SideBarStudioDesktopWidgetState extends State<SideBarStudioDesktopWidget>
    with TickerProviderStateMixin {
  late SideBarStudioDesktopModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
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
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
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
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 480.ms,
          begin: 0.0,
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarStudioDesktopModel());

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
          width: 54.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
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
                          width: 80.0,
                          height: 54.0,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/Logopng.png',
                            width: 55.0,
                            height: 55.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'DStudioHome',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 100),
                                    ),
                                  },
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
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
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-casa-48_(1).png',
                                                  width: 23.0,
                                                  height: 23.0,
                                                  fit: BoxFit.cover,
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  desktop: false,
                                                ))
                                                  Image.asset(
                                                    'assets/images/icons8-casa-48.png',
                                                    width: 25.0,
                                                    height: 25.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
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
                                            Text(
                                              'Home',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
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
                            }),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'DStudioProjectList',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 80.0,
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
                                              Stack(
                                                children: [
                                                  Icon(
                                                    Icons.folder_rounded,
                                                    color: Color(0xFF414141),
                                                    size: 23.0,
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons.folder_rounded,
                                                      color: Colors.white,
                                                      size: 23.0,
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Projects',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 9.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                  ],
                                ),
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.projectsHovered = true);
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
                                setState(() => _model.projectsHovered = false);
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80.0,
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
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-studio-display-60.png',
                                                  width: 20.0,
                                                  height: 20.0,
                                                  fit: BoxFit.cover,
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  desktop: false,
                                                ))
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
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
                                            Text(
                                              'Local',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
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
                              onEnter: ((event) async {
                                setState(() => _model.localHovered = true);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation3'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation3']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                              }),
                              onExit: ((event) async {
                                setState(() => _model.localHovered = false);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation3'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation3']!
                                      .controller
                                      .reverse();
                                }
                              }),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80.0,
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
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/images/icons8-icloud-50.png',
                                                  width: 23.0,
                                                  height: 23.0,
                                                  fit: BoxFit.cover,
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  desktop: false,
                                                ))
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
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
                                            Text(
                                              'Cloud',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                ],
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.cloudHovered = true);
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
                                setState(() => _model.cloudHovered = false);
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('DStudioCalendar');
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 80.0,
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
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/icons8-calendario-64.png',
                                                    width: 25.0,
                                                    height: 25.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    desktop: false,
                                                  ))
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
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
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
                                              Text(
                                                'Calendar',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
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
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.calendarHovered = true);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation5'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation5']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                              }),
                              onExit: ((event) async {
                                setState(() => _model.calendarHovered = false);
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation5'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation5']!
                                      .controller
                                      .reverse();
                                }
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 140.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            'assets/images/icons8-settings-50.png',
                                            width: 23.0,
                                            height: 23.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  1.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF353535),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/icons8-settings-50_(1).png',
                                          width: 23.0,
                                          height: 23.0,
                                          fit: BoxFit.cover,
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
                        onEnter: ((event) async {
                          setState(() => _model.settingsHovered = true);
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation6'] !=
                              null) {
                            await animationsMap[
                                    'containerOnActionTriggerAnimation6']!
                                .controller
                                .forward(from: 0.0);
                          }
                        }),
                        onExit: ((event) async {
                          setState(() => _model.settingsHovered = false);
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation6'] !=
                              null) {
                            await animationsMap[
                                    'containerOnActionTriggerAnimation6']!
                                .controller
                                .reverse();
                          }
                        }),
                      ),
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
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/icons8-assistenza-clienti-50.png',
                                          width: 20.0,
                                          height: 20.0,
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
                                  borderRadius: BorderRadius.circular(10.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/images/icons8-assistenza-clienti.gif',
                                          width: 20.0,
                                          height: 20.0,
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
                            setState(() => _model.supportHovered = true);
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation7'] !=
                                null) {
                              await animationsMap[
                                      'containerOnActionTriggerAnimation7']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          }),
                          onExit: ((event) async {
                            setState(() => _model.supportHovered = false);
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation7'] !=
                                null) {
                              await animationsMap[
                                      'containerOnActionTriggerAnimation7']!
                                  .controller
                                  .reverse();
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              wrapWithModel(
                model: _model.marketplaceHomeBarsModel,
                updateCallback: () => setState(() {}),
                child: StudioAppBarDesktopTestWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
