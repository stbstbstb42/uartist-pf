import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourAge widget.
  TextEditingController? yourAgeController;
  String? Function(BuildContext, String?)? yourAgeControllerValidator;
  // State field(s) for ailments widget.
  TextEditingController? ailmentsController;
  String? Function(BuildContext, String?)? ailmentsControllerValidator;
  // State field(s) for RadioButton widget.
  String? radioButtonValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    yourAgeController?.dispose();
    ailmentsController?.dispose();
  }

  /// Additional helper methods are added here.

}
