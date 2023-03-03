import '/components/marketplace_app_bar_desktop_test/marketplace_app_bar_desktop_test_widget.dart';
import '/components/marketplace_nav_bar_mobile/marketplace_nav_bar_mobile_widget.dart';
import '/components/marketplace_singers_header/marketplace_singers_header_widget.dart';
import '/components/top_sellers/top_sellers_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DMarketCategoryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for MarketplaceSingersHeader component.
  late MarketplaceSingersHeaderModel marketplaceSingersHeaderModel;
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
  // Model for TopSellers component.
  late TopSellersModel topSellersModel;
  // Model for marketplaceAppBarDesktopTest component.
  late MarketplaceAppBarDesktopTestModel marketplaceAppBarDesktopTestModel;
  // Model for MarketplaceNavBarMobile component.
  late MarketplaceNavBarMobileModel marketplaceNavBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceSingersHeaderModel =
        createModel(context, () => MarketplaceSingersHeaderModel());
    topSellersModel = createModel(context, () => TopSellersModel());
    marketplaceAppBarDesktopTestModel =
        createModel(context, () => MarketplaceAppBarDesktopTestModel());
    marketplaceNavBarMobileModel =
        createModel(context, () => MarketplaceNavBarMobileModel());
  }

  void dispose() {
    marketplaceSingersHeaderModel.dispose();
    topSellersModel.dispose();
    marketplaceAppBarDesktopTestModel.dispose();
    marketplaceNavBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
