import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'templates_model.dart';
export 'templates_model.dart';

class TemplatesWidget extends StatefulWidget {
  const TemplatesWidget({
    Key? key,
    this.productName,
    this.sellerName,
    this.price,
    this.rating,
    this.image,
  }) : super(key: key);

  final String? productName;
  final String? sellerName;
  final String? price;
  final double? rating;
  final String? image;

  @override
  _TemplatesWidgetState createState() => _TemplatesWidgetState();
}

class _TemplatesWidgetState extends State<TemplatesWidget> {
  late TemplatesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplatesModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          color: Color(0xFF151515),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                      widget.image!,
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              onEnter: ((event) async {
                setState(() => _model.mouseRegionHovered = true);
                setState(() {
                  FFAppState().showit = true;
                });
              }),
              onExit: ((event) async {
                setState(() => _model.mouseRegionHovered = false);
                setState(() {
                  FFAppState().showit = false;
                });
              }),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 0.0),
              child: Text(
                widget.productName!.maybeHandleOverflow(
                  maxChars: 18,
                  replacement: '…',
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.sellerName!,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 9.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.price!,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 9.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RatingBarIndicator(
                        itemBuilder: (context, index) => Icon(
                          Icons.star_sharp,
                          color: Color(0xFFEBFF21),
                        ),
                        direction: Axis.horizontal,
                        rating: widget.rating!,
                        unratedColor: Colors.white,
                        itemCount: 1,
                        itemSize: 8.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.rating?.toString(),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 8.0,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
