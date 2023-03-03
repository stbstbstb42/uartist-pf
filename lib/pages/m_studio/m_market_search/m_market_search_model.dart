import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/components/marketplace_nav_bar_mobile/marketplace_nav_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MMarketSearchModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // Model for MarketplaceNavBarMobile component.
  late MarketplaceNavBarMobileModel marketplaceNavBarMobileModel;
  // Model for marketplaceAppBarMobile component.
  late MarketplaceAppBarMobileModel marketplaceAppBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceNavBarMobileModel =
        createModel(context, () => MarketplaceNavBarMobileModel());
    marketplaceAppBarMobileModel =
        createModel(context, () => MarketplaceAppBarMobileModel());
  }

  void dispose() {
    searchBarController?.dispose();
    marketplaceNavBarMobileModel.dispose();
    marketplaceAppBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
