import '/components/marketplace_app_bar_desktop/marketplace_app_bar_desktop_widget.dart';
import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MarketplaceEntryPageCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for marketplaceAppBarDesktop component.
  late MarketplaceAppBarDesktopModel marketplaceAppBarDesktopModel;
  // Model for marketplaceAppBarMobile component.
  late MarketplaceAppBarMobileModel marketplaceAppBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceAppBarDesktopModel =
        createModel(context, () => MarketplaceAppBarDesktopModel());
    marketplaceAppBarMobileModel =
        createModel(context, () => MarketplaceAppBarMobileModel());
  }

  void dispose() {
    marketplaceAppBarDesktopModel.dispose();
    marketplaceAppBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
