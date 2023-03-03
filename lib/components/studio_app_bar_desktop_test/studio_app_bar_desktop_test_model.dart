import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StudioAppBarDesktopTestModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchBar widget.
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for Logout widget.
  bool logoutHovered = false;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchBarController?.dispose();
  }

  /// Additional helper methods are added here.

}
