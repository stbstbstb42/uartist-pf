import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../backend/supabase/supabase.dart';
import '../../auth/auth_util.dart';

int? deadline(DateTime dateCreation) {
  var today = DateTime.now();
  final difference = dateCreation.difference(today).inDays;

  return difference;
}

String projPercStr(
  int total,
  int completed,
) {
  int tot;
  String ret;

  tot = (completed * 100) ~/ total;
  ret = '$tot%';
  return ret;
}

double projPercCircular(
  int total,
  int completed,
) {
  return (completed / total);
}
