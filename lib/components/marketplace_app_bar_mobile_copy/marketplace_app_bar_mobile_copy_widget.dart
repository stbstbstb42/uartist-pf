import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'marketplace_app_bar_mobile_copy_model.dart';
export 'marketplace_app_bar_mobile_copy_model.dart';

class MarketplaceAppBarMobileCopyWidget extends StatefulWidget {
  const MarketplaceAppBarMobileCopyWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceAppBarMobileCopyWidgetState createState() =>
      _MarketplaceAppBarMobileCopyWidgetState();
}

class _MarketplaceAppBarMobileCopyWidgetState
    extends State<MarketplaceAppBarMobileCopyWidget>
    with TickerProviderStateMixin {
  late MarketplaceAppBarMobileCopyModel _model;

  final animationsMap = {
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 0.25,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceAppBarMobileCopyModel());

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

    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0x00151515),
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Color(0x00171717),
        ),
      ),
      child: Stack(
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Logopng.png',
                            width: 50.0,
                            height: 65.0,
                            fit: BoxFit.cover,
                          ).animateOnActionTrigger(
                            animationsMap['imageOnActionTriggerAnimation']!,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 118.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x00181818),
                            ),
                            child: Visibility(
                              visible: responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GradientText(
                                    'marketplace',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    colors: [
                                      Color(0xFFA6E72B),
                                      Color(0xFFF5F5F5)
                                    ],
                                    gradientDirection: GradientDirection.btt,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: Color(0xFF929292),
                                      size: 12.0,
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
                ),
              ],
            ),
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
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 0.0, 2.0),
                              child: Container(
                                width: 70.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x69646464),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'containerOnActionTriggerAnimation']!,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 2.0, 0.0, 2.0),
                                  child: Container(
                                    width: 70.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GradientText(
                                          'Services',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFC9DC13),
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          colors: [
                                            Color(0xFFC9DC13),
                                            Colors.white
                                          ],
                                          gradientDirection:
                                              GradientDirection.btt,
                                          gradientType: GradientType.linear,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 2.0, 2.0, 2.0),
                                  child: InkWell(
                                    onTap: () async {
                                      if (animationsMap[
                                              'containerOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'containerOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0)
                                            .whenComplete(animationsMap[
                                                    'containerOnActionTriggerAnimation']!
                                                .controller
                                                .reverse);
                                      }
                                    },
                                    child: Container(
                                      width: 70.0,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sounds',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 10.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 2.0, 2.0),
                                  child: Container(
                                    width: 70.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Discover',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
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
        ],
      ),
    );
  }
}
