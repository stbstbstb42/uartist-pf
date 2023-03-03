import '/components/studio_app_bar_mobile/studio_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class StudioHomeAppBarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for studioAppBarMobile component.
  late StudioAppBarMobileModel studioAppBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    studioAppBarMobileModel =
        createModel(context, () => StudioAppBarMobileModel());
  }

  void dispose() {
    studioAppBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
