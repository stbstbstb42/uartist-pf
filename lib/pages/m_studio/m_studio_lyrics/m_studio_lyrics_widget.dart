import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_studio_lyrics_model.dart';
export 'm_studio_lyrics_model.dart';

class MStudioLyricsWidget extends StatefulWidget {
  const MStudioLyricsWidget({Key? key}) : super(key: key);

  @override
  _MStudioLyricsWidgetState createState() => _MStudioLyricsWidgetState();
}

class _MStudioLyricsWidgetState extends State<MStudioLyricsWidget> {
  late MStudioLyricsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MStudioLyricsModel());

    _model.lyricsController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 77.2,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              context.pop();
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Trottole',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Salva',
                            options: FFButtonOptions(
                              width: 60.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 74.9,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                          metas: Metas(
                            id: 'sample3.mp3-6tfgnxt9',
                            title: 'Trottole',
                          ),
                        ),
                        titleTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF9D9D9D),
                                  fontSize: 12.0,
                                ),
                        fillColor: Color(0x00EEEEEE),
                        playbackButtonColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        activeTrackColor: Color(0xFF57636C),
                        elevation: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 100.0,
                        child: Divider(
                          height: 2.0,
                          thickness: 1.0,
                          color: Color(0xFF242424),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 20.0),
                          child: Container(
                            height: 200.0,
                            decoration: BoxDecoration(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              child: TextFormField(
                                controller: _model.lyricsController,
                                onFieldSubmitted: (_) async {
                                  final usersUpdateData =
                                      createUsersRecordData();
                                  await currentUserReference!
                                      .update(usersUpdateData);
                                },
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText:
                                      '[Inizia qui a scrivere il testo...]',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .grayDark,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x8B272727),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x00632929),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          15.0, 15.0, 15.0, 15.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFE7E7E7),
                                    ),
                                maxLines: 4000,
                                validator: _model.lyricsControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
