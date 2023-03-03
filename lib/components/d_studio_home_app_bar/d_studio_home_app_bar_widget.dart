import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_studio_home_app_bar_model.dart';
export 'd_studio_home_app_bar_model.dart';

class DStudioHomeAppBarWidget extends StatefulWidget {
  const DStudioHomeAppBarWidget({Key? key}) : super(key: key);

  @override
  _DStudioHomeAppBarWidgetState createState() =>
      _DStudioHomeAppBarWidgetState();
}

class _DStudioHomeAppBarWidgetState extends State<DStudioHomeAppBarWidget> {
  late DStudioHomeAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DStudioHomeAppBarModel());

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

    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(26.0),
                    child: Image.asset(
                      'assets/images/Nuovo_progetto_(11).png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26.0),
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
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectionArea(
                                child: Text(
                              'Collaborate with your team and\nultimate your projects',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Arboria',
                                    color: Colors.white,
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                    lineHeight: 0.99,
                                  ),
                            )),
                          ],
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
    );
  }
}
