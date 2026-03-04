import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/admin_dashboard_tile/admin_dashboard_tile_widget.dart';
import '/pages/itemcatalog/admin_item_catalog_tile/admin_item_catalog_tile_widget.dart';
import '/pages/manifesto/manifesto_t_ile/manifesto_t_ile_widget.dart';
import '/pages/shipments/shipment_admin_tile/shipment_admin_tile_widget.dart';
import '/pages/trips/trip_card/trip_card_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminDashboardTile component.
  late AdminDashboardTileModel adminDashboardTileModel;
  // Model for AdminItemCatalogTile component.
  late AdminItemCatalogTileModel adminItemCatalogTileModel;
  // Model for TripCard component.
  late TripCardModel tripCardModel;
  // Model for ShipmentAdminTile component.
  late ShipmentAdminTileModel shipmentAdminTileModel;
  // Model for manifestoTIle component.
  late ManifestoTIleModel manifestoTIleModel;

  @override
  void initState(BuildContext context) {
    adminDashboardTileModel =
        createModel(context, () => AdminDashboardTileModel());
    adminItemCatalogTileModel =
        createModel(context, () => AdminItemCatalogTileModel());
    tripCardModel = createModel(context, () => TripCardModel());
    shipmentAdminTileModel =
        createModel(context, () => ShipmentAdminTileModel());
    manifestoTIleModel = createModel(context, () => ManifestoTIleModel());
  }

  @override
  void dispose() {
    adminDashboardTileModel.dispose();
    adminItemCatalogTileModel.dispose();
    tripCardModel.dispose();
    shipmentAdminTileModel.dispose();
    manifestoTIleModel.dispose();
  }
}
