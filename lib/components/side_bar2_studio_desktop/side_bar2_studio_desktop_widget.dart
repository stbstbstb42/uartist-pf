import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar2_studio_desktop_model.dart';
export 'side_bar2_studio_desktop_model.dart';

class SideBar2StudioDesktopWidget extends StatefulWidget {
  const SideBar2StudioDesktopWidget({Key? key}) : super(key: key);

  @override
  _SideBar2StudioDesktopWidgetState createState() =>
      _SideBar2StudioDesktopWidgetState();
}

class _SideBar2StudioDesktopWidgetState
    extends State<SideBar2StudioDesktopWidget> {
  late SideBar2StudioDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBar2StudioDesktopModel());

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
      width: 263.9,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(-2.0, 2.0),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF171717),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          iconColor: Color(0x005D5D5D),
                          weekFormat: false,
                          weekStartsMonday: true,
                          initialDate: getCurrentTimestamp,
                          rowHeight: 40.0,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() =>
                                _model.calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle:
                              FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x00FFFFFF),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF3F3F3F),
                                    fontSize: 10.0,
                                  ),
                          dateStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 11.0,
                                  ),
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF5F5F5F),
                                    fontSize: 11.0,
                                  ),
                          locale: FFLocalizations.of(context).languageCode,
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
    );
  }
}
