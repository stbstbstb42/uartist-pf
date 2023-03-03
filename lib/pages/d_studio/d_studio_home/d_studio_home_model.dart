import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_bar_studio_desktop/side_bar_studio_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DStudioHomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarStudioDesktop component.
  late SideBarStudioDesktopModel sideBarStudioDesktopModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarStudioDesktopModel =
        createModel(context, () => SideBarStudioDesktopModel());
  }

  void dispose() {
    sideBarStudioDesktopModel.dispose();
  }

  /// Additional helper methods are added here.

}
