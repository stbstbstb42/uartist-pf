import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_proj_empty_model.dart';
export 'd_proj_empty_model.dart';

class DProjEmptyWidget extends StatefulWidget {
  const DProjEmptyWidget({Key? key}) : super(key: key);

  @override
  _DProjEmptyWidgetState createState() => _DProjEmptyWidgetState();
}

class _DProjEmptyWidgetState extends State<DProjEmptyWidget>
    with TickerProviderStateMixin {
  late DProjEmptyModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 1.005,
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
          duration: 620.ms,
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
    _model = createModel(context, () => DProjEmptyModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
      child: MouseRegion(
        opaque: false,
        cursor: MouseCursor.defer ?? MouseCursor.defer,
        child: Container(
          width: 250.0,
          height: 180.0,
          decoration: BoxDecoration(
            color: Color(0xFF161616),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      '',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [Color(0x00EF393C), Color(0xFF161616)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: BoxDecoration(
                  color: Color(0x43505050),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 1.2,
                  ),
                ),
              ).animateOnActionTrigger(
                animationsMap['containerOnActionTriggerAnimation2']!,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Icon(
                                  Icons.add_to_queue,
                                  color: Color(0xFF626262),
                                  size: 22.0,
                                ),
                              ),
                              Text(
                                'Create a new project',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF626262),
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.w500,
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
            ],
          ),
        ).animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation1']!,
        ),
        onEnter: ((event) async {
          setState(() => _model.mouseRegionHovered = true);
          if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
            animationsMap['containerOnActionTriggerAnimation1']!
                .controller
                .forward(from: 0.0);
          }
          if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
            animationsMap['containerOnActionTriggerAnimation2']!
                .controller
                .forward(from: 0.0);
          }
        }),
        onExit: ((event) async {
          setState(() => _model.mouseRegionHovered = false);
          if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
            animationsMap['containerOnActionTriggerAnimation1']!
                .controller
                .reverse();
          }
          if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
            animationsMap['containerOnActionTriggerAnimation2']!
                .controller
                .reverse();
          }
        }),
      ),
    );
  }
}
