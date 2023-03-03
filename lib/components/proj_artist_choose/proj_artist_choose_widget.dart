import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'proj_artist_choose_model.dart';
export 'proj_artist_choose_model.dart';

class ProjArtistChooseWidget extends StatefulWidget {
  const ProjArtistChooseWidget({
    Key? key,
    this.artistImage,
    this.artistName,
  }) : super(key: key);

  final String? artistImage;
  final String? artistName;

  @override
  _ProjArtistChooseWidgetState createState() => _ProjArtistChooseWidgetState();
}

class _ProjArtistChooseWidgetState extends State<ProjArtistChooseWidget>
    with TickerProviderStateMixin {
  late ProjArtistChooseModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 380.ms,
          begin: 1.0,
          end: 1.01,
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
          duration: 380.ms,
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
    _model = createModel(context, () => ProjArtistChooseModel());

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

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        width: 60.0,
        height: 85.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(100.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            widget.artistImage!,
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 5.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0x51212121),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            widget.artistImage!,
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation2']!,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                  child: Text(
                    widget.artistName!,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 10.0,
                        ),
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
          await animationsMap['containerOnActionTriggerAnimation2']!
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
          await animationsMap['containerOnActionTriggerAnimation2']!
              .controller
              .reverse();
        }
      }),
    );
  }
}
