import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'studio_app_bar_desktop_test_model.dart';
export 'studio_app_bar_desktop_test_model.dart';

class StudioAppBarDesktopTestWidget extends StatefulWidget {
  const StudioAppBarDesktopTestWidget({Key? key}) : super(key: key);

  @override
  _StudioAppBarDesktopTestWidgetState createState() =>
      _StudioAppBarDesktopTestWidgetState();
}

class _StudioAppBarDesktopTestWidgetState
    extends State<StudioAppBarDesktopTestWidget> with TickerProviderStateMixin {
  late StudioAppBarDesktopTestModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
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
    _model = createModel(context, () => StudioAppBarDesktopTestModel());

    _model.searchBarController ??= TextEditingController();
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
      height: 54.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'uartist',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Studio',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 30.0,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
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
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF525252),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF606060),
                                      fontSize: 10.0,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x0022282F),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFF151515),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 2.0),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF828282),
                              size: 18.0,
                            ),
                            suffixIcon:
                                _model.searchBarController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.searchBarController?.clear();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          color: Color(0xFF757575),
                                          size: 15.0,
                                        ),
                                      )
                                    : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF606060),
                                    fontSize: 10.0,
                                  ),
                          validator: _model.searchBarControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.mode_comment_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 10.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  'Feedback on this page?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                Color(0xFF696CC3),
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor
                                              ],
                                              stops: [0.0, 0.5, 1.0],
                                              begin: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              end: AlignmentDirectional(
                                                  1.0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            border: Border.all(
                                              color: Color(0xFFE9E9E9),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.mode_comment_outlined,
                                                  color: Colors.white,
                                                  size: 10.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  'Feedback on this page?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation']!,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    setState(
                                        () => _model.mouseRegionHovered = true);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation']!
                                          .controller
                                          .forward(from: 0.0);
                                    }
                                  }),
                                  onExit: ((event) async {
                                    setState(() =>
                                        _model.mouseRegionHovered = false);
                                    if (animationsMap[
                                            'containerOnActionTriggerAnimation'] !=
                                        null) {
                                      await animationsMap[
                                              'containerOnActionTriggerAnimation']!
                                          .controller
                                          .reverse();
                                    }
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.notifications,
                                  color: Color(0xFFD9D9D9),
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 75.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF202020),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF404040),
                                size: 20.0,
                              ),
                            ),
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await signOut();

                                      context.goNamedAuth('loginPage', mounted);
                                    },
                                    child: Container(
                                      width: 35.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 2.0, 2.0, 2.0),
                                                child: Container(
                                                  width: 31.0,
                                                  height: 31.0,
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
                                    ),
                                  ),
                                ],
                              ),
                              onEnter: ((event) async {
                                setState(() => _model.logoutHovered = true);
                              }),
                              onExit: ((event) async {
                                setState(() => _model.logoutHovered = false);
                              }),
                            ),
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
    );
  }
}
