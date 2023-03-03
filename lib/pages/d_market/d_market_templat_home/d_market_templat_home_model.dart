import '/backend/backend.dart';
import '/components/marketplace_d_bars/marketplace_d_bars_widget.dart';
import '/components/templates/templates_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DMarketTemplatHomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for MarketplaceDBars component.
  late MarketplaceDBarsModel marketplaceDBarsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceDBarsModel = createModel(context, () => MarketplaceDBarsModel());
  }

  void dispose() {
    marketplaceDBarsModel.dispose();
  }

  /// Additional helper methods are added here.

}
