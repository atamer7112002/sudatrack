import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/agent/agent_tile/agent_tile_widget.dart';
import '/pages/agent/agent_trip_tile/agent_trip_tile_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'agent_home_page_widget.dart' show AgentHomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgentHomePageModel extends FlutterFlowModel<AgentHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AgentTile component.
  late AgentTileModel agentTileModel;
  // Model for AgentTripTile component.
  late AgentTripTileModel agentTripTileModel;

  @override
  void initState(BuildContext context) {
    agentTileModel = createModel(context, () => AgentTileModel());
    agentTripTileModel = createModel(context, () => AgentTripTileModel());
  }

  @override
  void dispose() {
    agentTileModel.dispose();
    agentTripTileModel.dispose();
  }
}
