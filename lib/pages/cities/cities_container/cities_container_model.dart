import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cities/city_edit_button/city_edit_button_widget.dart';
import '/pages/cities/edit_city_bottom_sheet/edit_city_bottom_sheet_widget.dart';
import 'dart:ui';
import 'cities_container_widget.dart' show CitiesContainerWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CitiesContainerModel extends FlutterFlowModel<CitiesContainerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CityEditButton component.
  late CityEditButtonModel cityEditButtonModel;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    cityEditButtonModel = createModel(context, () => CityEditButtonModel());
  }

  @override
  void dispose() {
    cityEditButtonModel.dispose();
  }
}
