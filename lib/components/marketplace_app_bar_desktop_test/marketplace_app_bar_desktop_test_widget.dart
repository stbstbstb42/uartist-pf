import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'marketplace_app_bar_desktop_test_model.dart';
export 'marketplace_app_bar_desktop_test_model.dart';

class MarketplaceAppBarDesktopTestWidget extends StatefulWidget {
  const MarketplaceAppBarDesktopTestWidget({Key? key}) : super(key: key);

  @override
  _MarketplaceAppBarDesktopTestWidgetState createState() =>
      _MarketplaceAppBarDesktopTestWidgetState();
}

class _MarketplaceAppBarDesktopTestWidgetState
    extends State<MarketplaceAppBarDesktopTestWidget> {
  late MarketplaceAppBarDesktopTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarketplaceAppBarDesktopTestModel());

    _model.searchBarController ??= TextEditingController();
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 65.0,
          decoration: BoxDecoration(
            color: Color(0xFF181414),
            borderRadius: BorderRadius.circular(0.0),
            border: Border.all(
              color: Color(0x00171717),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  context.pushNamed(
                    'marketplaceHome',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00181818),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Logopng.png',
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'uartist',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 118.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00181818),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GradientText(
                                      'marketplace',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      colors: [
                                        Color(0xFFA6E72B),
                                        Color(0xFFF5F5F5)
                                      ],
                                      gradientDirection: GradientDirection.btt,
                                      gradientType: GradientType.linear,
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
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Container(
                                  width: 350.0,
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
                                      labelText:
                                          'Search by services, categories or professionists',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF606060),
                                            fontSize: 10.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF606060),
                                            fontSize: 10.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x0022282F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF212121),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 2.0, 0.0, 2.0),
                                      prefixIcon: Icon(
                                        Icons.search_rounded,
                                        color: Color(0xFF828282),
                                        size: 15.0,
                                      ),
                                      suffixIcon: _model.searchBarController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.searchBarController
                                                    ?.clear();
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
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF606060),
                                          fontSize: 10.0,
                                        ),
                                    validator: _model
                                        .searchBarControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 100.0,
                            child: VerticalDivider(
                              thickness: 1.0,
                              color: Color(0xFF262626),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 35.0,
                              fillColor: Color(0xFF323232),
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 15.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 35.0,
                              fillColor: Color(0xFF323232),
                              icon: Icon(
                                Icons.notifications_none,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 15.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Icon(
                              Icons.help_rounded,
                              color: Color(0xFF2D2D2D),
                              size: 35.0,
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                            child: VerticalDivider(
                              thickness: 1.0,
                              color: Color(0xFF262626),
                            ),
                          ),
                        ],
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Column(
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Login',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFCBEF39),
                                          Colors.white,
                                          FlutterFlowTheme.of(context)
                                              .tertiaryColor
                                        ],
                                        stops: [0.0, 0.5, 1.0],
                                        begin: AlignmentDirectional(-1.0, -1.0),
                                        end: AlignmentDirectional(1.0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  32.0, 0.0, 32.0, 0.0),
                                          child: Text(
                                            'Sign Up',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF151515),
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF262626),
          ),
        ),
      ],
    );
  }
}
