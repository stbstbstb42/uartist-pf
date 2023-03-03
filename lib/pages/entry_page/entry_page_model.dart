import '/components/entry_app_bar/entry_app_bar_widget.dart';
import '/components/marketplace_app_bar_mobile/marketplace_app_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EntryPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // Model for marketplaceAppBarMobile component.
  late MarketplaceAppBarMobileModel marketplaceAppBarMobileModel;
  // Model for entryAppBar component.
  late EntryAppBarModel entryAppBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    marketplaceAppBarMobileModel =
        createModel(context, () => MarketplaceAppBarMobileModel());
    entryAppBarModel = createModel(context, () => EntryAppBarModel());
  }

  void dispose() {
    searchBarController?.dispose();
    marketplaceAppBarMobileModel.dispose();
    entryAppBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
