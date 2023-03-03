import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showit = false;
  bool get showit => _showit;
  set showit(bool _value) {
    _showit = _value;
  }

  bool _MBHomeSelected = true;
  bool get MBHomeSelected => _MBHomeSelected;
  set MBHomeSelected(bool _value) {
    _MBHomeSelected = _value;
  }

  bool _MBSearchSelected = false;
  bool get MBSearchSelected => _MBSearchSelected;
  set MBSearchSelected(bool _value) {
    _MBSearchSelected = _value;
  }

  bool _MBCartSelected = false;
  bool get MBCartSelected => _MBCartSelected;
  set MBCartSelected(bool _value) {
    _MBCartSelected = _value;
  }

  bool _MBChatSelected = false;
  bool get MBChatSelected => _MBChatSelected;
  set MBChatSelected(bool _value) {
    _MBChatSelected = _value;
  }

  bool _MBAccountSelected = false;
  bool get MBAccountSelected => _MBAccountSelected;
  set MBAccountSelected(bool _value) {
    _MBAccountSelected = _value;
  }

  bool _MBStudioHome = true;
  bool get MBStudioHome => _MBStudioHome;
  set MBStudioHome(bool _value) {
    _MBStudioHome = _value;
  }

  bool _MBStudioProjects = false;
  bool get MBStudioProjects => _MBStudioProjects;
  set MBStudioProjects(bool _value) {
    _MBStudioProjects = _value;
  }

  bool _MBStudioCreate = false;
  bool get MBStudioCreate => _MBStudioCreate;
  set MBStudioCreate(bool _value) {
    _MBStudioCreate = _value;
  }

  bool _MBStudioCloud = false;
  bool get MBStudioCloud => _MBStudioCloud;
  set MBStudioCloud(bool _value) {
    _MBStudioCloud = _value;
  }

  bool _MBStudioLogo = false;
  bool get MBStudioLogo => _MBStudioLogo;
  set MBStudioLogo(bool _value) {
    _MBStudioLogo = _value;
  }

  bool _DESKStudioHome = false;
  bool get DESKStudioHome => _DESKStudioHome;
  set DESKStudioHome(bool _value) {
    _DESKStudioHome = _value;
  }

  bool _DESKStudioProjects = false;
  bool get DESKStudioProjects => _DESKStudioProjects;
  set DESKStudioProjects(bool _value) {
    _DESKStudioProjects = _value;
  }

  bool _DESKStudioCalendar = false;
  bool get DESKStudioCalendar => _DESKStudioCalendar;
  set DESKStudioCalendar(bool _value) {
    _DESKStudioCalendar = _value;
  }

  bool _DESKStudioSettings = false;
  bool get DESKStudioSettings => _DESKStudioSettings;
  set DESKStudioSettings(bool _value) {
    _DESKStudioSettings = _value;
  }

  bool _DESKStudioLocal = false;
  bool get DESKStudioLocal => _DESKStudioLocal;
  set DESKStudioLocal(bool _value) {
    _DESKStudioLocal = _value;
  }

  bool _DESKStudioCloud = false;
  bool get DESKStudioCloud => _DESKStudioCloud;
  set DESKStudioCloud(bool _value) {
    _DESKStudioCloud = _value;
  }

  bool _DESKStudioMessages = false;
  bool get DESKStudioMessages => _DESKStudioMessages;
  set DESKStudioMessages(bool _value) {
    _DESKStudioMessages = _value;
  }

  bool _DESKStudioAccount = false;
  bool get DESKStudioAccount => _DESKStudioAccount;
  set DESKStudioAccount(bool _value) {
    _DESKStudioAccount = _value;
  }

  bool _DESKStudioSupport = false;
  bool get DESKStudioSupport => _DESKStudioSupport;
  set DESKStudioSupport(bool _value) {
    _DESKStudioSupport = _value;
  }

  bool _DESKStudioSideMenuOn = false;
  bool get DESKStudioSideMenuOn => _DESKStudioSideMenuOn;
  set DESKStudioSideMenuOn(bool _value) {
    _DESKStudioSideMenuOn = _value;
  }

  bool _DESKViewProj1 = false;
  bool get DESKViewProj1 => _DESKViewProj1;
  set DESKViewProj1(bool _value) {
    _DESKViewProj1 = _value;
  }

  bool _DESKStudioViewProj2 = false;
  bool get DESKStudioViewProj2 => _DESKStudioViewProj2;
  set DESKStudioViewProj2(bool _value) {
    _DESKStudioViewProj2 = _value;
  }

  bool _createNewProj = false;
  bool get createNewProj => _createNewProj;
  set createNewProj(bool _value) {
    _createNewProj = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
