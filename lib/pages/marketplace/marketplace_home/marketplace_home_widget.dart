import '/components/marketplace_app_bar_desktop_test/marketplace_app_bar_desktop_test_widget.dart';
import '/components/marketplace_nav_bar_mobile/marketplace_nav_bar_mobile_widget.dart';
import '/components/marketplace_singers_header/marketplace_singers_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_home_model.dart';
export 'marketplace_home_model.dart';

class MarketplaceHomeWidget extends StatefulWidget {
  const MarketplaceHomeWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceHomeWidgetState createState() => _MarketplaceHomeWidgetState();
}

class _MarketplaceHomeWidgetState extends State<MarketplaceHomeWidget> {
  late MarketplaceHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceHomeModel());

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

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0F0C0C),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.marketplaceSingersHeaderModel,
                            updateCallback: () => setState(() {}),
                            child: MarketplaceSingersHeaderWidget(),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 65.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 55.5,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Featured',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Sound Engineering',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            'Graphics',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'marketplaceCategoryTest',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Singers',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11.0,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            'Videomaking',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                ),
                                          ),
                                          Text(
                                            'Music Studios',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
                                                ),
                                          ),
                                          Text(
                                            'Digital Marketing',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.0,
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
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 25.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 313.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/pexels-adrien-olichon-2387532.jpg',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x8C1A1A1A),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            'Discover a world of music\nprofessionals at your fingertips',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Arboria',
                                                  color: Color(0xFFE2E2E2),
                                                  fontSize: 44.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                  lineHeight: 0.99,
                                                ),
                                          )),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SelectionArea(
                                                child: Text(
                                              'Streamline your music production process now.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA8A8A8),
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: Color(0xFF838383),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(32.0, 0.0,
                                                                32.0, 0.0),
                                                    child: Text(
                                                      'Discover',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                height: 32.0,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                      Color(0xFF3C50B7),
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiaryColor
                                                    ],
                                                    stops: [0.0, 0.5, 1.0],
                                                    begin: AlignmentDirectional(
                                                        -1.0, -1.0),
                                                    end: AlignmentDirectional(
                                                        1.0, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  32.0,
                                                                  0.0,
                                                                  32.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Become a seller',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 0.0, 25.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Top Sellers',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1.0,
                                                height: 290.8,
                                                decoration: BoxDecoration(),
                                                child: ListView(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  25.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 310.4,
                                                        height: 500.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width: 210.2,
                                                          height: 37.3,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                child:
                                                                    Container(
                                                                  width: 286.5,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFFFFD700),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/748/150',
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '1',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Video Editing',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Reeeload Productions',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                onEnter:
                                                                    ((event) async {
                                                                  setState(() =>
                                                                      _model.mouseRegionHovered1 =
                                                                          true);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .showit =
                                                                        true;
                                                                  });
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  setState(() =>
                                                                      _model.mouseRegionHovered1 =
                                                                          false);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .showit =
                                                                        false;
                                                                  });
                                                                }),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFC0C0C0),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/648/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '2',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Graphic Design',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Luigi Leggieri',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered2 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered2 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFCD7F32),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/243/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '3',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Recording Session',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Studio D7',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered3 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered3 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/428/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '4',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Songwriting',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Lil Banki',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered4 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered4 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/408/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '5',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Spotify + IG Promo',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Trap Global',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered5 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered5 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 340.0,
                                                        height: 500.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width: 210.2,
                                                          height: 37.3,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                child:
                                                                    Container(
                                                                  width: 286.5,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Container(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/748/150',
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '6',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Mastering',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Forward Studios',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 9.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                onEnter:
                                                                    ((event) async {
                                                                  setState(() =>
                                                                      _model.mouseRegionHovered6 =
                                                                          true);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .showit =
                                                                        true;
                                                                  });
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  setState(() =>
                                                                      _model.mouseRegionHovered6 =
                                                                          false);
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .showit =
                                                                        false;
                                                                  });
                                                                }),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/65/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '7',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Vocal Session',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'JB Vocals',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered7 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered7 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/843/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '8',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Vocal Tuning',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Studio D7',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered8 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered8 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/458/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '9',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Photoshooting',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Federico Rinaldi',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered9 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered9 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        286.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    'https://picsum.photos/seed/508/150',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              19.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '10',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Blog Interview',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Rolling Stones',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 9.0,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered10 =
                                                                            true);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          true;
                                                                    });
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    setState(() =>
                                                                        _model.mouseRegionHovered10 =
                                                                            false);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .showit =
                                                                          false;
                                                                    });
                                                                  }),
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
                                            ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      25.0, 10.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Container(
                                                          width: 286.5,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child: Stack(
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFFFD700),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          1.0,
                                                                          1.0,
                                                                          1.0,
                                                                          1.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://picsum.photos/seed/748/150',
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                child: Text(
                                                                  '1',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Video Editing',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Reeeload Productions',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              9.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          setState(() => _model
                                                                  .mouseRegionHovered11 =
                                                              true);
                                                          setState(() {
                                                            FFAppState()
                                                                .showit = true;
                                                          });
                                                        }),
                                                        onExit: ((event) async {
                                                          setState(() => _model
                                                                  .mouseRegionHovered11 =
                                                              false);
                                                          setState(() {
                                                            FFAppState()
                                                                .showit = false;
                                                          });
                                                        }),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Container(
                                                            width: 286.5,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFC0C0C0),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1.0,
                                                                            1.0,
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/648/150',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '2',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Graphic Design',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Luigi Leggieri',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                9.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered12 =
                                                                true);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  true;
                                                            });
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered12 =
                                                                false);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  false;
                                                            });
                                                          }),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Container(
                                                            width: 286.5,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFCD7F32),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1.0,
                                                                            1.0,
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/243/150',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '3',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Recording Session',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Studio D7',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                9.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered13 =
                                                                true);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  true;
                                                            });
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered13 =
                                                                false);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  false;
                                                            });
                                                          }),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Container(
                                                            width: 286.5,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1.0,
                                                                            1.0,
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/428/150',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '4',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Songwriting',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Lil Banki',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                9.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered14 =
                                                                true);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  true;
                                                            });
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered14 =
                                                                false);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  false;
                                                            });
                                                          }),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Container(
                                                            width: 286.5,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1.0,
                                                                            1.0,
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/408/150',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '5',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Spotify + IG Promo',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Trap Global',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                9.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered15 =
                                                                true);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  true;
                                                            });
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered15 =
                                                                false);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  false;
                                                            });
                                                          }),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Container(
                                                            width: 286.5,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child: Stack(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            1.0,
                                                                            1.0,
                                                                            1.0,
                                                                            1.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/748/150',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '6',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Mastering',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Forward Studios',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                9.0,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered16 =
                                                                true);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  true;
                                                            });
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() => _model
                                                                    .mouseRegionHovered16 =
                                                                false);
                                                            setState(() {
                                                              FFAppState()
                                                                      .showit =
                                                                  false;
                                                            });
                                                          }),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Container(
                                                              width: 286.5,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              1.0,
                                                                              1.0,
                                                                              1.0,
                                                                              1.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/65/150',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '7',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Vocal Session',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        'JB Vocals',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 9.0,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered17 =
                                                                      true);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    true;
                                                              });
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered17 =
                                                                      false);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    false;
                                                              });
                                                            }),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Container(
                                                              width: 286.5,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              1.0,
                                                                              1.0,
                                                                              1.0,
                                                                              1.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/843/150',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '8',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Vocal Tuning',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        'Studio D7',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 9.0,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered18 =
                                                                      true);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    true;
                                                              });
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered18 =
                                                                      false);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    false;
                                                              });
                                                            }),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Container(
                                                              width: 286.5,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              1.0,
                                                                              1.0,
                                                                              1.0,
                                                                              1.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/458/150',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '9',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Photoshooting',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        'Federico Rinaldi',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 9.0,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered19 =
                                                                      true);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    true;
                                                              });
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered19 =
                                                                      false);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    false;
                                                              });
                                                            }),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Container(
                                                              width: 286.5,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              1.0,
                                                                              1.0,
                                                                              1.0,
                                                                              1.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/508/150',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            19.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '10',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Blog Interview',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        'Rolling Stones',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 9.0,
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered20 =
                                                                      true);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    true;
                                                              });
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              setState(() =>
                                                                  _model.mouseRegionHovered20 =
                                                                      false);
                                                              setState(() {
                                                                FFAppState()
                                                                        .showit =
                                                                    false;
                                                              });
                                                            }),
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
                        ),
                      ],
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    wrapWithModel(
                      model: _model.marketplaceAppBarDesktopTestModel,
                      updateCallback: () => setState(() {}),
                      child: MarketplaceAppBarDesktopTestWidget(),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.marketplaceNavBarMobileModel,
                        updateCallback: () => setState(() {}),
                        child: MarketplaceNavBarMobileWidget(),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
