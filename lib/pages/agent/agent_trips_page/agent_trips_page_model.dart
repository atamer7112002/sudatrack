import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/agent/empty_state_widget/empty_state_widget_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'agent_trips_page_widget.dart' show AgentTripsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgentTripsPageModel extends FlutterFlowModel<AgentTripsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EmptyStateWidget component.
  late EmptyStateWidgetModel emptyStateWidgetModel;

  @override
  void initState(BuildContext context) {
    emptyStateWidgetModel = createModel(context, () => EmptyStateWidgetModel());
  }

  @override
  void dispose() {
    emptyStateWidgetModel.dispose();
  }
}
