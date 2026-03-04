import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'review_shipment_page_widget.dart' show ReviewShipmentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewShipmentPageModel
    extends FlutterFlowModel<ReviewShipmentPageWidget> {
  ///  Local state fields for this page.

  String nextReceiptNumber = 'تجريبي';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  CountersRecord? updatedCounter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
