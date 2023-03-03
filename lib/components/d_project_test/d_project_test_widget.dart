import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'd_project_test_model.dart';
export 'd_project_test_model.dart';

class DProjectTestWidget extends StatefulWidget {
  const DProjectTestWidget({
    Key? key,
    this.projectName,
    this.type,
    this.artistName,
    this.image,
    this.deadline,
    this.deadlineSet,
    this.percentage,
    this.percCircular,
    this.docReference,
    this.createdDate,
    this.modifiedDate,
    this.producedBy,
  }) : super(key: key);

  final String? projectName;
  final String? type;
  final String? artistName;
  final String? image;
  final DateTime? deadline;
  final bool? deadlineSet;
  final String? percentage;
  final double? percCircular;
  final DocumentReference? docReference;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final String? producedBy;

  @override
  _DProjectTestWidgetState createState() => _DProjectTestWidgetState();
}

class _DProjectTestWidgetState extends State<DProjectTestWidget>
    with TickerProviderStateMixin {
  late DProjectTestModel _model;

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
          duration: 500.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: 1.0,
          end: 1.1,
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
          duration: 320.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -40.0),
          end: Offset(0.0, 0.0),
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
          duration: 600.ms,
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
    _model = createModel(context, () => DProjectTestModel());

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
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
          onTap: () async {
            context.pushNamed(
              'DStudioProjectOverview',
              queryParams: {
                'projectName': serializeParam(
                  widget.projectName,
                  ParamType.String,
                ),
                'artistName': serializeParam(
                  widget.artistName,
                  ParamType.String,
                ),
                'projectImage': serializeParam(
                  widget.image,
                  ParamType.String,
                ),
                'deadline': serializeParam(
                  widget.deadline,
                  ParamType.DateTime,
                ),
                'deadlineSet': serializeParam(
                  widget.deadlineSet,
                  ParamType.bool,
                ),
                'type': serializeParam(
                  widget.type,
                  ParamType.String,
                ),
                'createdDate': serializeParam(
                  widget.createdDate,
                  ParamType.DateTime,
                ),
                'modifiedDate': serializeParam(
                  widget.modifiedDate,
                  ParamType.DateTime,
                ),
                'producedBy': serializeParam(
                  widget.producedBy,
                  ParamType.String,
                ),
              }.withoutNulls,
            );
          },
          child: Container(
            width: 300.0,
            height: 160.0,
            child: Stack(
              children: [
                Container(
                  width: 300.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        widget.image!,
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    color: Color(0xE51C1C1C),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    width: 300.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 12.0, 20.0, 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.projectName!,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    widget.type!,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF8C8C8C),
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Artist Name',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    widget.artistName!.maybeHandleOverflow(
                                      maxChars: 20,
                                      replacement: '…',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Deadline',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    widget.deadlineSet!
                                        ? '${functions.deadline(widget.deadline!)?.toString()} days left'
                                        : 'Unset'.maybeHandleOverflow(
                                            maxChars: 15,
                                            replacement: '…',
                                          ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                              MouseRegion(
                                opaque: false,
                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: CircularPercentIndicator(
                                        percent: widget.percCircular!,
                                        radius: 20.0,
                                        lineWidth: 5.0,
                                        animation: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        backgroundColor: Color(0xFFF1F4F8),
                                      ),
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 30.0,
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation2']!,
                                    ),
                                  ],
                                ),
                                onEnter: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered2 = true);
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation2'] !=
                                      null) {
                                    await animationsMap[
                                            'containerOnActionTriggerAnimation2']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                }),
                                onExit: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered2 = false);
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation2'] !=
                                      null) {
                                    await animationsMap[
                                            'containerOnActionTriggerAnimation2']!
                                        .controller
                                        .reverse();
                                  }
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: 300.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 1.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.push_pin_outlined,
                                    color: Colors.white,
                                    size: 17.0,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 15.0, 0.0),
                                      child: InkWell(
                                        onTap: () async {
                                          if (animationsMap[
                                                  'rowOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'rowOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                        },
                                        onDoubleTap: () async {
                                          if (animationsMap[
                                                  'rowOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'rowOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                          size: 17.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.group_add_outlined,
                                              color: Color(0xFF6495ED),
                                              size: 20.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 3.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                Icons.delete_forever_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 20.0,
                                              ),
                                              onPressed: () async {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation4'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation4']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'rowOnActionTriggerAnimation']!,
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
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation3']!,
                ),
                Container(
                  width: 300.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Are you sure you want to delete\nthis project and its versions?',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'This action cannot be undone',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 8.0,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  if (animationsMap[
                                          'containerOnActionTriggerAnimation4'] !=
                                      null) {
                                    await animationsMap[
                                            'containerOnActionTriggerAnimation4']!
                                        .controller
                                        .reverse();
                                  }
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  width: 80.0,
                                  height: 30.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0x00EF393C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation4'] !=
                                        null) {
                                      animationsMap[
                                              'containerOnActionTriggerAnimation4']!
                                          .controller
                                          .reset();
                                    }
                                    if (animationsMap[
                                            'rowOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'rowOnActionTriggerAnimation']!
                                          .controller
                                          .reset();
                                    }
                                    await widget.docReference!.delete();
                                  },
                                  text: 'Delete',
                                  options: FFButtonOptions(
                                    width: 80.0,
                                    height: 30.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation4']!,
                ),
              ],
            ),
          ),
        ),
      ).animateOnActionTrigger(
        animationsMap['containerOnActionTriggerAnimation1']!,
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered1 = true);
        if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
          animationsMap['containerOnActionTriggerAnimation1']!
              .controller
              .forward(from: 0.0);
        }
        if (animationsMap['containerOnActionTriggerAnimation3'] != null) {
          await animationsMap['containerOnActionTriggerAnimation3']!
              .controller
              .forward(from: 0.0);
        }
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered1 = false);
        if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
          animationsMap['containerOnActionTriggerAnimation1']!
              .controller
              .reverse();
        }
        if (animationsMap['containerOnActionTriggerAnimation3'] != null) {
          animationsMap['containerOnActionTriggerAnimation3']!
              .controller
              .reverse();
        }
        if (animationsMap['rowOnActionTriggerAnimation'] != null) {
          animationsMap['rowOnActionTriggerAnimation']!.controller.reverse();
        }
      }),
    );
  }
}
