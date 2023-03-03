import '/components/marketplace_home_app_bar/marketplace_home_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MarketplaceDBarsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Home widget.
  bool homeHovered = false;
  // State field(s) for Projects widget.
  bool projectsHovered = false;
  // State field(s) for Local widget.
  bool localHovered = false;
  // State field(s) for Cloud widget.
  bool cloudHovered = false;
  // State field(s) for Calendar widget.
  bool calendarHovered = false;
  // State field(s) for Chat widget.
  bool chatHovered = false;
  // State field(s) for Settings widget.
  bool settingsHovered = false;
  // State field(s) for Support widget.
  bool supportHovered = false;
  // State field(s) for Account widget.
  bool accountHovered = false;
  // Model for MarketplaceHomeAppBar component.
  late MarketplaceHomeAppBarModel marketplaceHomeAppBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceHomeAppBarModel =
        createModel(context, () => MarketplaceHomeAppBarModel());
  }

  void dispose() {
    marketplaceHomeAppBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
