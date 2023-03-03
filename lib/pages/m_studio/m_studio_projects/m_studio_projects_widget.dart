import '/components/studio_app_bar_mobile/studio_app_bar_mobile_widget.dart';
import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'm_studio_projects_model.dart';
export 'm_studio_projects_model.dart';

class MStudioProjectsWidget extends StatefulWidget {
  const MStudioProjectsWidget({Key? key}) : super(key: key);

  @override
  _MStudioProjectsWidgetState createState() => _MStudioProjectsWidgetState();
}

class _MStudioProjectsWidgetState extends State<MStudioProjectsWidget> {
  late MStudioProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MStudioProjectsModel());

    _model.searchBarController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 5.0, 25.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 30.0,
                        constraints: BoxConstraints(
                          maxWidth: 450.0,
                        ),
                        decoration: BoxDecoration(),
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
                            labelText: 'Search by name, category...',
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF606060),
                                      fontSize: 10.0,
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
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFF212121),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 2.0),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF828282),
                              size: 15.0,
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
                                          size: 20.0,
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
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 60.0),
                      child: DefaultTabController(
                        length: 3,
                        initialIndex: 1,
                        child: Column(
                          children: [
                            TabBar(
                              isScrollable: true,
                              labelColor: Colors.white,
                              unselectedLabelColor: Color(0xFF545454),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10.0,
                                  ),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              indicatorWeight: 1.0,
                              tabs: [
                                Tab(
                                  text: 'Favorites',
                                ),
                                Tab(
                                  text: 'In progress',
                                ),
                                Tab(
                                  text: 'Completed',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25.0, 25.0, 25.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 152.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              image: Image.asset(
                                                'assets/images/cover_francio.jpg',
                                              ).image,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Color(0x33000000),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x65090F13),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                  'projectPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .chevron_right_rounded,
                                                          color: Colors.white,
                                                          size: 15.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Trottole',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              20.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Single',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              9.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              2.0,
                                                                              0.0),
                                                                          child:
                                                                              LinearPercentIndicator(
                                                                            percent:
                                                                                0.65,
                                                                            width:
                                                                                295.0,
                                                                            lineHeight:
                                                                                4.0,
                                                                            animation:
                                                                                true,
                                                                            progressColor:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            backgroundColor:
                                                                                Color(0x3FF1F4F8),
                                                                            barRadius:
                                                                                Radius.circular(1000.0),
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF161616),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: Color(0xFFE8FF20),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          'https://picsum.photos/seed/828/1000',
                                                        ).image,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 92.0,
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
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x00EF393C),
                                                          Color(0xFF161616)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                0, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    15.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .push_pin_rounded,
                                                              color:
                                                                  Colors.white,
                                                              size: 15.0,
                                                            ),
                                                            Icon(
                                                              Icons.more_vert,
                                                              color:
                                                                  Colors.white,
                                                              size: 15.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          5.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF4539EF),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(0.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Started From',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Album',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFF606060),
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 25.0,
                                                                              height: 25.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(100.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                                                                            width: 23.0,
                                                                                            height: 23.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.35, 0.0),
                                                                              child: Container(
                                                                                width: 25.0,
                                                                                height: 25.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-0.4, -1.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Nuovo_progetto_(1).jpg',
                                                                                              width: 23.0,
                                                                                              height: 23.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF202020),
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '7+',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFBEBEBE),
                                                                                                    fontSize: 6.0,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Working on',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 7.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        10.0,
                                                                        20.0,
                                                                        15.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Artist Name',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0xFF606060),
                                                                                        fontSize: 8.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Lil Banki',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 11.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  'Producer: Faeint, Luigi22',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0xFF606060),
                                                                                        fontSize: 8.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deadline',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: Color(0xFF606060),
                                                                                          fontSize: 8.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '72 days left',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          fontSize: 11.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Completed tasks: 52/112',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: Color(0xFF606060),
                                                                                          fontSize: 8.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.47,
                                                                      radius:
                                                                          22.5,
                                                                      lineWidth:
                                                                          2.0,
                                                                      animation:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFFF1F4F8),
                                                                      center:
                                                                          Text(
                                                                        '47%',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.white,
                                                                              fontSize: 10.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF161616),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          'https://picsum.photos/seed/7421/1000',
                                                        ).image,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 92.0,
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
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x00EF393C),
                                                          Color(0xFF161616)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                0, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              Icons.more_vert,
                                                              color:
                                                                  Colors.white,
                                                              size: 15.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          5.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(0.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Smith & Wesson',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Single',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFF606060),
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 25.0,
                                                                              height: 25.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(100.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                                                                            width: 23.0,
                                                                                            height: 23.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.35, 0.0),
                                                                              child: Container(
                                                                                width: 25.0,
                                                                                height: 25.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-0.4, -1.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Nuovo_progetto_(1).jpg',
                                                                                              width: 23.0,
                                                                                              height: 23.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF202020),
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '2+',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFBEBEBE),
                                                                                                    fontSize: 6.0,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Working on',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 7.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        10.0,
                                                                        20.0,
                                                                        15.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Artist Name',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Lil Banki, SLATT',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 11.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Producer: Faeint',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Deadline',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '24 days left',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      fontSize: 11.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Completed tasks: 19/24',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.78,
                                                                      radius:
                                                                          22.5,
                                                                      lineWidth:
                                                                          2.0,
                                                                      animation:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFFF1F4F8),
                                                                      center:
                                                                          Text(
                                                                        '78%',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.white,
                                                                              fontSize: 10.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF161616),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          'https://picsum.photos/seed/987/1000',
                                                        ).image,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 92.0,
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
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x00EF393C),
                                                          Color(0xFF161616)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                0, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              Icons.more_vert,
                                                              color:
                                                                  Colors.white,
                                                              size: 15.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          5.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(0.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Demons Freestyle',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Single',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFF606060),
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 25.0,
                                                                              height: 25.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(100.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                                                                            width: 23.0,
                                                                                            height: 23.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.35, 0.0),
                                                                              child: Container(
                                                                                width: 25.0,
                                                                                height: 25.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-0.4, -1.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                            child: Image.network(
                                                                                              'https://picsum.photos/seed/473/100',
                                                                                              width: 23.0,
                                                                                              height: 23.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF202020),
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '3+',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFBEBEBE),
                                                                                                    fontSize: 6.0,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Working on',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 7.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        10.0,
                                                                        20.0,
                                                                        15.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Artist Name',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'YNG MHAT, Lil Banki',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 11.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Producer: Luigi22',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Deadline',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Unset',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      fontSize: 11.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Completed tasks: 52/112',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.59,
                                                                      radius:
                                                                          22.5,
                                                                      lineWidth:
                                                                          2.0,
                                                                      animation:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFFF1F4F8),
                                                                      center:
                                                                          Text(
                                                                        '59%',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.white,
                                                                              fontSize: 10.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 15.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF161616),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          'https://picsum.photos/seed/897/1000',
                                                        ).image,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.0,
                                                    height: 92.0,
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
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 1.0),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x00EF393C),
                                                          Color(0xFF161616)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                0, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              Icons.more_vert,
                                                              color:
                                                                  Colors.white,
                                                              size: 15.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          5.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(0.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'CCNC',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 18.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Single',
                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFF606060),
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 25.0,
                                                                              height: 25.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(100.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/DALLE_2022-10-24_23.55.23.png',
                                                                                            width: 23.0,
                                                                                            height: 23.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.35, 0.0),
                                                                              child: Container(
                                                                                width: 25.0,
                                                                                height: 25.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-0.4, -1.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                            child: Image.network(
                                                                                              'https://picsum.photos/seed/513/100',
                                                                                              width: 23.0,
                                                                                              height: 23.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFF202020),
                                                                                    shape: BoxShape.circle,
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '1+',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: Color(0xFFBEBEBE),
                                                                                                    fontSize: 6.0,
                                                                                                    fontWeight: FontWeight.w500,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Working on',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.white,
                                                                                  fontSize: 7.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        10.0,
                                                                        20.0,
                                                                        15.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Artist Name',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Lil Banki',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 11.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Producer: Luigi22',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFF606060),
                                                                                    fontSize: 8.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Deadline',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Unset',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      fontSize: 11.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Completed tasks: 21/28',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF606060),
                                                                                      fontSize: 8.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.82,
                                                                      radius:
                                                                          22.5,
                                                                      lineWidth:
                                                                          2.0,
                                                                      animation:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFFF1F4F8),
                                                                      center:
                                                                          Text(
                                                                        '82%',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.white,
                                                                              fontSize: 10.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Tab View 3',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 32.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.studioNavBarMBModel,
                updateCallback: () => setState(() {}),
                child: StudioNavBarMBWidget(),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.studioAppBarMobileModel,
                updateCallback: () => setState(() {}),
                child: StudioAppBarMobileWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
