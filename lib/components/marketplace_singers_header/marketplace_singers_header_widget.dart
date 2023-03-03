import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_singers_header_model.dart';
export 'marketplace_singers_header_model.dart';

class MarketplaceSingersHeaderWidget extends StatefulWidget {
  const MarketplaceSingersHeaderWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceSingersHeaderWidgetState createState() =>
      _MarketplaceSingersHeaderWidgetState();
}

class _MarketplaceSingersHeaderWidgetState
    extends State<MarketplaceSingersHeaderWidget> {
  late MarketplaceSingersHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceSingersHeaderModel());

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
      height: 270.0,
      child: Stack(
        children: [
          if (FFAppState().MBSearchSelected)
            Image.network(
              '',
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.none,
            ),
          if (FFAppState().MBHomeSelected)
            Image.asset(
              'assets/images/pexels-omar-houchaimi-752525_(1).jpg',
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.none,
            ),
          Container(
            width: double.infinity,
            height: 260.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Color(0x008A5C5C),
                  Color(0xFF0F0C0C)
                ],
                stops: [0.0, 0.5, 0.9],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.marketplaceAppBarMobileModel,
              updateCallback: () => setState(() {}),
              child: MarketplaceAppBarMobileWidget(),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
            child: Container(
              height: 162.0,
              child: PageView(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 1),
                scrollDirection: Axis.horizontal,
                children: [
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 162.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/Nuovo_progetto_(5).png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (FFAppState().MBSearchSelected &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'assets/images/pexels-daniel-rocha-4726532.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 25.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (FFAppState().MBSearchSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Find the perfect vocal\nfor your next\nhit song',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                      if (FFAppState().MBHomeSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Discover a world of music\nprofessionals\nat your fingertips',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 162.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/Nuovo_progetto_(5).png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (FFAppState().MBSearchSelected &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'assets/images/pexels-daniel-rocha-4726532.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 25.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (FFAppState().MBSearchSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Find the perfect vocal\nfor your next\nhit song',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                      if (FFAppState().MBHomeSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Discover a world of music\nprofessionals\nat your fingertips',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 162.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/Nuovo_progetto_(5).png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (FFAppState().MBSearchSelected &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'assets/images/pexels-daniel-rocha-4726532.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 25.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (FFAppState().MBSearchSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Find the perfect vocal\nfor your next\nhit song',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                      if (FFAppState().MBHomeSelected &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        SelectionArea(
                                            child: Text(
                                          'Discover a world of music\nprofessionals\nat your fingertips',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Arboria',
                                                color: Color(0xFFE2E2E2),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                                lineHeight: 0.99,
                                              ),
                                        )),
                                    ],
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
          ),
        ],
      ),
    );
  }
}
