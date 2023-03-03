import '/components/side_bar2_studio_desktop/side_bar2_studio_desktop_widget.dart';
import '/components/studio_nav_bar_m_b/studio_nav_bar_m_b_widget.dart';
import '/components/studioapp_bar_desktop/studioapp_bar_desktop_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar2StudioDesktop component.
  late SideBar2StudioDesktopModel sideBar2StudioDesktopModel;
  // Model for studioappBarDesktop component.
  late StudioappBarDesktopModel studioappBarDesktopModel;
  // Model for StudioNavBarMB component.
  late StudioNavBarMBModel studioNavBarMBModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBar2StudioDesktopModel =
        createModel(context, () => SideBar2StudioDesktopModel());
    studioappBarDesktopModel =
        createModel(context, () => StudioappBarDesktopModel());
    studioNavBarMBModel = createModel(context, () => StudioNavBarMBModel());
  }

  void dispose() {
    sideBar2StudioDesktopModel.dispose();
    studioappBarDesktopModel.dispose();
    studioNavBarMBModel.dispose();
  }

  /// Additional helper methods are added here.

}
