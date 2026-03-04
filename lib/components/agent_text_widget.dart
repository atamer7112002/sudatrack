import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'agent_text_model.dart';
export 'agent_text_model.dart';

class AgentTextWidget extends StatefulWidget {
  const AgentTextWidget({super.key});

  @override
  State<AgentTextWidget> createState() => _AgentTextWidgetState();
}

class _AgentTextWidgetState extends State<AgentTextWidget> {
  late AgentTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgentTextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: GradientText(
        'اضغط علي الرحلة المراد اضافة شحنات بها ',
        style: FlutterFlowTheme.of(context).titleMedium.override(
          font: GoogleFonts.cairoPlay(
            fontWeight: FontWeight.w500,
            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
          ),
          color: FlutterFlowTheme.of(context).primary,
          fontSize: 18.0,
          letterSpacing: 0.0,
          fontWeight: FontWeight.w500,
          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
          shadows: [
            Shadow(
              color: FlutterFlowTheme.of(context).secondaryText,
              offset: Offset(1.0, 1.0),
              blurRadius: 1.0,
            )
          ],
        ),
        colors: [
          FlutterFlowTheme.of(context).primary,
          FlutterFlowTheme.of(context).secondary
        ],
        gradientDirection: GradientDirection.ltr,
        gradientType: GradientType.linear,
      ),
    );
  }
}
