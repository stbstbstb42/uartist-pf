import '/components/side_bar2_studio_desktop/side_bar2_studio_desktop_widget.dart';
import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/components/studioapp_bar_desktop/studioapp_bar_desktop_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_page_model.dart';
export 'project_page_model.dart';

class ProjectPageWidget extends StatefulWidget {
  const ProjectPageWidget({Key? key}) : super(key: key);

  @override
  _ProjectPageWidgetState createState() => _ProjectPageWidgetState();
}

class _ProjectPageWidgetState extends State<ProjectPageWidget> {
  late ProjectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 1.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 291.1,
                            decoration: BoxDecoration(
                              color: Color(0x00111417),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  '',
                                ).image,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 290.0,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 0.0,
                                                sigmaY: 0.0,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 8.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  child: Image.asset(
                                                    'assets/images/cover_francio.jpg',
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            1.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 36.0, 16.0, 1.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons
                                                          .chevron_left_rounded,
                                                      color: Colors.white,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pop();
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0,
                                                          15.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 120.0,
                                                        height: 120.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00111417),
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/cover_francio.jpg',
                                                                width: 120.0,
                                                                height: 120.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  1.0,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00111417),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Trottole',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        32.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Single',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 2.0, 0.0, 12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'followButton pressed ...');
                                                            },
                                                            text: 'Play Now',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 90.0,
                                                              height: 36.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  Colors.white,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Color(
                                                                            0xFF101213),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 44.0,
                                                          icon: Icon(
                                                            Icons
                                                                .notifications_none,
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            size: 24.0,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 44.0,
                                                          icon: Icon(
                                                            Icons
                                                                .settings_outlined,
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            size: 24.0,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 44.0,
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_control,
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            size: 24.0,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 42.6,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1E1E1E),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Go to Folder',
                                                    icon: Icon(
                                                      Icons.drive_file_move,
                                                      size: 15.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 130.0,
                                                      height: 30.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0x00FF2B2F),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10.0,
                                                              ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    showLoadingIndicator: false,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'MStudioLyrics',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .leftToRight,
                                                      ),
                                                    },
                                                  );
                                                },
                                                text: 'Lyrics',
                                                icon: Icon(
                                                  Icons.notes,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100.0,
                                                  height: 30.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0x00494949),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Team Members',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                height: 61.9,
                                decoration: BoxDecoration(
                                  color: Color(0x00111417),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 5.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 150.0,
                                          child: Stack(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.75, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1598346762291-aee88549193f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.2, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1598346762291-aee88549193f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.35, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.91, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '3 partecipants',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF636363),
                                                fontSize: 10.0,
                                              ),
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
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.sideBar2StudioDesktopModel,
                      updateCallback: () => setState(() {}),
                      child: SideBar2StudioDesktopWidget(),
                    ),
                  ),
              ],
            ),
            wrapWithModel(
              model: _model.studioappBarDesktopModel,
              updateCallback: () => setState(() {}),
              child: StudioappBarDesktopWidget(),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.studioNavBarMBModel,
                updateCallback: () => setState(() {}),
                child: StudioNavBarMBWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
