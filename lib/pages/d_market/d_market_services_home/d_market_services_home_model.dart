import '/components/marketplace_d_bars/marketplace_d_bars_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DMarketServicesHomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
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
