import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MStudioLyricsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for lyrics widget.
  TextEditingController? lyricsController;
  String? Function(BuildContext, String?)? lyricsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    lyricsController?.dispose();
  }

  /// Additional helper methods are added here.

}
