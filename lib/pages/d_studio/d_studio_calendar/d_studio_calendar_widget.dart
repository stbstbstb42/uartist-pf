import '/components/side_bar_studio_desktop/side_bar_studio_desktop_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_studio_calendar_model.dart';
export 'd_studio_calendar_model.dart';

class DStudioCalendarWidget extends StatefulWidget {
  const DStudioCalendarWidget({Key? key}) : super(key: key);

  @override
  _DStudioCalendarWidgetState createState() => _DStudioCalendarWidgetState();
}

class _DStudioCalendarWidgetState extends State<DStudioCalendarWidget> {
  late DStudioCalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DStudioCalendarModel());

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF4900D8),
        icon: Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 20.0,
        ),
        elevation: 2.0,
        label: Text(
          'Add event',
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
              ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80.0, 80.0, 0.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.22,
                              height: 380.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF121212),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: FlutterFlowCalendar(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  iconColor: Colors.white,
                                  weekFormat: false,
                                  weekStartsMonday: true,
                                  initialDate: getCurrentTimestamp,
                                  rowHeight: 50.0,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() => _model.calendarSelectedDay1 =
                                        newSelectedDate);
                                  },
                                  titleStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                  dayOfWeekStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 10.0,
                                  ),
                                  dateStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                  selectedDateStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                  inactiveDateStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                  ),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                height: 308.6,
                                decoration: BoxDecoration(
                                  color: Color(0xFF121212),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Today\'s Events',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w600,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.869,
                            decoration: BoxDecoration(
                              color: Color(0xFF121212),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: FlutterFlowCalendar(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    iconColor: Colors.white,
                                    weekFormat: true,
                                    weekStartsMonday: true,
                                    rowHeight: 60.0,
                                    onChange: (DateTimeRange? newSelectedDate) {
                                      setState(() =>
                                          _model.calendarSelectedDay2 =
                                              newSelectedDate);
                                    },
                                    titleStyle: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                    ),
                                    dayOfWeekStyle: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 10.0,
                                    ),
                                    dateStyle: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                    selectedDateStyle: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.0,
                                    ),
                                    inactiveDateStyle: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 13.0,
                                    ),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                ),
                                Container(
                                  width: 851.7,
                                  height: 430.7,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.event_note_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 44.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'It seems like there\'s no events in list for this day',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.sideBarStudioDesktopModel,
                updateCallback: () => setState(() {}),
                child: SideBarStudioDesktopWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
