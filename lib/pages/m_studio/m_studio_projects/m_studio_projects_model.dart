import '/components/studio_app_bar_mobile/studio_app_bar_mobile_widget.dart';
import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MStudioProjectsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // Model for StudioNavBarMB component.
  late StudioNavBarMBModel studioNavBarMBModel;
  // Model for studioAppBarMobile component.
  late StudioAppBarMobileModel studioAppBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    studioNavBarMBModel = createModel(context, () => StudioNavBarMBModel());
    studioAppBarMobileModel =
        createModel(context, () => StudioAppBarMobileModel());
  }

  void dispose() {
    searchBarController?.dispose();
    studioNavBarMBModel.dispose();
    studioAppBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
