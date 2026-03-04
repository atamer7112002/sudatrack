import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'shipmenttransfer_model.dart';
export 'shipmenttransfer_model.dart';

class ShipmenttransferWidget extends StatefulWidget {
  const ShipmenttransferWidget({super.key});

  @override
  State<ShipmenttransferWidget> createState() => _ShipmenttransferWidgetState();
}

class _ShipmenttransferWidgetState extends State<ShipmenttransferWidget> {
  late ShipmenttransferModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShipmenttransferModel());

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
        'يمكن نقل الشحنة المفتوحة فقط بالضغط علي زر حالتها',
        style: FlutterFlowTheme.of(context).titleMedium.override(
          font: GoogleFonts.cairoPlay(
            fontWeight: FontWeight.w500,
            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
          ),
          color: FlutterFlowTheme.of(context).primary,
          fontSize: 16.0,
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
