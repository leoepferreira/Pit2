import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AtualizarItemWidget extends StatefulWidget {
  const AtualizarItemWidget({
    Key? key,
    this.produtoComponente,
    this.produtoVendaComponente,
  }) : super(key: key);

  final DocumentReference? produtoComponente;
  final DocumentReference? produtoVendaComponente;

  @override
  _AtualizarItemWidgetState createState() => _AtualizarItemWidgetState();
}

class _AtualizarItemWidgetState extends State<AtualizarItemWidget> {
  int? countControllerValue;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProdutoVendaRecord>(
      stream: ProdutoVendaRecord.getDocument(widget.produtoVendaComponente!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Color(0xFF9839EF),
              ),
            ),
          );
        }
        final columnProdutoVendaRecord = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: StreamBuilder<ProdutoRecord>(
                stream: ProdutoRecord.getDocument(
                    columnProdutoVendaRecord.produto!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: Color(0xFF9839EF),
                        ),
                      ),
                    );
                  }
                  final rowProdutoRecord = snapshot.data!;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        rowProdutoRecord.name!,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 26,
                            ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Atualizar itens no Carrinho',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).alternate
                                : Colors.black,
                            size: 20,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plus,
                            color: enabled ? Colors.blue : Colors.black,
                            size: 20,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: GoogleFonts.getFont(
                              'Roboto',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          count: countControllerValue ??=
                              columnProdutoVendaRecord.quantidade!,
                          updateCount: (count) =>
                              setState(() => countControllerValue = count),
                          stepSize: 1,
                          minimum: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StreamBuilder<ProdutoRecord>(
                    stream: ProdutoRecord.getDocument(
                        columnProdutoVendaRecord.produto!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: Color(0xFF9839EF),
                            ),
                          ),
                        );
                      }
                      final buttonProdutoRecord = snapshot.data!;
                      return FFButtonWidget(
                        onPressed: () async {
                          final produtoVendaUpdateData =
                              createProdutoVendaRecordData(
                            quantidade: countControllerValue,
                            valorSubtotal: functions.subtotalProduto(
                                buttonProdutoRecord.price!,
                                countControllerValue!),
                          );
                          await columnProdutoVendaRecord.reference
                              .update(produtoVendaUpdateData);
                          Navigator.pop(context);
                        },
                        text: 'Atualizar',
                        options: FFButtonOptions(
                          width: 200,
                          height: 60,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 5,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      );
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Cancelar',
                    options: FFButtonOptions(
                      width: 200,
                      height: 60,
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
