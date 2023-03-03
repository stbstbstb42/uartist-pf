import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'play_it_model.dart';
export 'play_it_model.dart';

class PlayItWidget extends StatefulWidget {
  const PlayItWidget({Key? key}) : super(key: key);

  @override
  _PlayItWidgetState createState() => _PlayItWidgetState();
}

class _PlayItWidgetState extends State<PlayItWidget> {
  late PlayItModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayItModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().showit,
      child: Container(
        width: 130.0,
        height: 130.0,
        decoration: BoxDecoration(
          color: Color(0x41141414),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFF0000),
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
