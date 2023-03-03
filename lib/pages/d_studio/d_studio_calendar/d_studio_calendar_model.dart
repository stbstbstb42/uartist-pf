import '/components/side_bar_studio_desktop/side_bar_studio_desktop_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DStudioCalendarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for sideBarStudioDesktop component.
  late SideBarStudioDesktopModel sideBarStudioDesktopModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    sideBarStudioDesktopModel =
        createModel(context, () => SideBarStudioDesktopModel());
  }

  void dispose() {
    sideBarStudioDesktopModel.dispose();
  }

  /// Additional helper methods are added here.

}
