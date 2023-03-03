import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'slider_desktop_model.dart';
export 'slider_desktop_model.dart';

class SliderDesktopWidget extends StatefulWidget {
  const SliderDesktopWidget({Key? key}) : super(key: key);

  @override
  _SliderDesktopWidgetState createState() => _SliderDesktopWidgetState();
}

class _SliderDesktopWidgetState extends State<SliderDesktopWidget> {
  late SliderDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderDesktopModel());

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: Colors.white,
                  size: 12.0,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white,
                size: 12.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
