import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MStudioProjectOverviewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for StudioNavBarMB component.
  late StudioNavBarMBModel studioNavBarMBModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    studioNavBarMBModel = createModel(context, () => StudioNavBarMBModel());
  }

  void dispose() {
    studioNavBarMBModel.dispose();
  }

  /// Additional helper methods are added here.

}
