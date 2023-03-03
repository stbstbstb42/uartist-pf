import '/components/studio_home_app_bar/studio_home_app_bar_widget.dart';
import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MStudioHomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for StudioHomeAppBar component.
  late StudioHomeAppBarModel studioHomeAppBarModel;
  // Model for StudioNavBarMB component.
  late StudioNavBarMBModel studioNavBarMBModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    studioHomeAppBarModel = createModel(context, () => StudioHomeAppBarModel());
    studioNavBarMBModel = createModel(context, () => StudioNavBarMBModel());
  }

  void dispose() {
    studioHomeAppBarModel.dispose();
    studioNavBarMBModel.dispose();
  }

  /// Additional helper methods are added here.

}
