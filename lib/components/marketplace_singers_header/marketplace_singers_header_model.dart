import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MarketplaceSingersHeaderModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for marketplaceAppBarMobile component.
  late MarketplaceAppBarMobileModel marketplaceAppBarMobileModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceAppBarMobileModel =
        createModel(context, () => MarketplaceAppBarMobileModel());
  }

  void dispose() {
    marketplaceAppBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
