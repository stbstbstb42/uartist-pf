import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_singers_header_copy_model.dart';
export 'marketplace_singers_header_copy_model.dart';

class MarketplaceSingersHeaderCopyWidget extends StatefulWidget {
  const MarketplaceSingersHeaderCopyWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceSingersHeaderCopyWidgetState createState() =>
      _MarketplaceSingersHeaderCopyWidgetState();
}

class _MarketplaceSingersHeaderCopyWidgetState
    extends State<MarketplaceSingersHeaderCopyWidget> {
  late MarketplaceSingersHeaderCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceSingersHeaderCopyModel());

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
              height: 200.0,
              fit: BoxFit.none,
            ),
          if (FFAppState().MBHomeSelected)
            Image.asset(
              'assets/images/pexels-omar-houchaimi-752525_(1).jpg',
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.none,
            ),
          Container(
            width: double.infinity,
            height: 210.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color(0x008A5C5C), Color(0xFF181414)],
                stops: [0.0, 0.6, 0.9],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 100.0, 25.0, 0.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.204,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Stack(
                  children: [
                    if (FFAppState().MBHomeSelected)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/pexels-adrien-olichon-2387532.jpg',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (FFAppState().MBSearchSelected)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/pexels-daniel-rocha-4726532.jpg',
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                'Find the perfect vocalist\nfor your next hit song',
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.marketplaceAppBarMobileModel,
              updateCallback: () => setState(() {}),
              child: MarketplaceAppBarMobileWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
