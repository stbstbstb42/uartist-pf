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
import 'mptest_model.dart';
export 'mptest_model.dart';

class MptestWidget extends StatefulWidget {
  const MptestWidget({Key? key}) : super(key: key);

  @override
  _MptestWidgetState createState() => _MptestWidgetState();
}

class _MptestWidgetState extends State<MptestWidget>
    with TickerProviderStateMixin {
  late MptestModel _model;

  final animationsMap = {
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
    _model = createModel(context, () => MptestModel());

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
      height: 35.0,
      decoration: BoxDecoration(
        color: Color(0x00151515),
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Color(0x00171717),
        ),
      ),
      child: Container(
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
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 0.0, 2.0),
                  child: Container(
                    width: 70.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x69646464),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation']!,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 0.0, 2.0),
                      child: Container(
                        width: 70.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              colors: [Color(0xFFC9DC13), Colors.white],
                              gradientDirection: GradientDirection.btt,
                              gradientType: GradientType.linear,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
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
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 2.0, 2.0),
                      child: Container(
                        width: 70.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
