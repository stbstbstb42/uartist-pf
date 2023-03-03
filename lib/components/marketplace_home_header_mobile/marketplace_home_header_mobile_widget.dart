import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marketplace_home_header_mobile_model.dart';
export 'marketplace_home_header_mobile_model.dart';

class MarketplaceHomeHeaderMobileWidget extends StatefulWidget {
  const MarketplaceHomeHeaderMobileWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceHomeHeaderMobileWidgetState createState() =>
      _MarketplaceHomeHeaderMobileWidgetState();
}

class _MarketplaceHomeHeaderMobileWidgetState
    extends State<MarketplaceHomeHeaderMobileWidget> {
  late MarketplaceHomeHeaderMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceHomeHeaderMobileModel());

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
      height: 290.0,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/pexels-omar-houchaimi-752525_(1).jpg',
            width: double.infinity,
            height: 272.1,
            fit: BoxFit.none,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color(0x008A5C5C), Color(0xFF181414)],
                stops: [0.0, 0.6, 0.9],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.204,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  SelectionArea(
                                      child: Text(
                                    'Get access to the industry\'s top vocalists\nand take your music production to new heights',
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
                                if (responsiveVisibility(
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
                                          fontSize: 24.0,
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
            ],
          ),
        ],
      ),
    );
  }
}
