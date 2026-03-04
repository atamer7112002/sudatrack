import '/components/statuscomponent_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'trip_component_widget.dart' show TripComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TripComponentModel extends FlutterFlowModel<TripComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for statuscomponent component.
  late StatuscomponentModel statuscomponentModel;

  @override
  void initState(BuildContext context) {
    statuscomponentModel = createModel(context, () => StatuscomponentModel());
  }

  @override
  void dispose() {
    statuscomponentModel.dispose();
  }
}
