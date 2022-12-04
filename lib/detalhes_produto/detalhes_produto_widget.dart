import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../carrinho/carrinho_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pagina_inicial/pagina_inicial_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalhesProdutoWidget extends StatefulWidget {
  const DetalhesProdutoWidget({
    Key? key,
    this.detalheProduto,
  }) : super(key: key);

  final DocumentReference? detalheProduto;

  @override
  _DetalhesProdutoWidgetState createState() => _DetalhesProdutoWidgetState();
}

class _DetalhesProdutoWidgetState extends State<DetalhesProdutoWidget> {
  ProdutoVendaRecord? produtoVenda;
  int? countControllerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProdutoRecord>(
      stream: ProdutoRecord.getDocument(widget.detalheProduto!),
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
        final detalhesProdutoProdutoRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).lineColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaginaInicialWidget(),
                    ),
                  );
                },
              ),
              title: Align(
                alignment: AlignmentDirectional(0.2, 0),
                child: Text(
                  'Detalhes',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 22,
                        lineHeight: 2,
                      ),
                ),
              ),
              actions: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 0,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 30,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarrinhoWidget(),
                      ),
                    );
                  },
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Container(),
              ),
              centerTitle: false,
              toolbarHeight: double.infinity,
              elevation: 2,
            ),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.97,
                            height: 300,
                            decoration: BoxDecoration(),
                            child: Image.network(
                              detalhesProdutoProdutoRecord.image!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Text(
                                  detalhesProdutoProdutoRecord.name!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                      ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Text(
                                  formatNumber(
                                    detalhesProdutoProdutoRecord.price!,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$',
                                  ).maybeHandleOverflow(maxChars: 9),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF9219CE),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Text(
                                    detalhesProdutoProdutoRecord.description!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 120,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              count: countControllerValue ??= 1,
                              updateCount: (count) =>
                                  setState(() => countControllerValue = count),
                              stepSize: 1,
                              minimum: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Subtotal ${formatNumber(
                            functions.subtotalProduto(
                                detalhesProdutoProdutoRecord.price!,
                                countControllerValue!),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.commaDecimal,
                            currency: 'R\$ ',
                          )}'
                              .maybeHandleOverflow(maxChars: 18),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final produtoVendaCreateData =
                                  createProdutoVendaRecordData(
                                produto: detalhesProdutoProdutoRecord.reference,
                                quantidade: countControllerValue,
                                usuario: currentUserReference,
                                valorSubtotal: functions.subtotalProduto(
                                    detalhesProdutoProdutoRecord.price!,
                                    countControllerValue!),
                              );
                              var produtoVendaRecordReference =
                                  ProdutoVendaRecord.collection.doc();
                              await produtoVendaRecordReference
                                  .set(produtoVendaCreateData);
                              produtoVenda =
                                  ProdutoVendaRecord.getDocumentFromData(
                                      produtoVendaCreateData,
                                      produtoVendaRecordReference);
                              setState(() => FFAppState()
                                  .addToProdutosVendaLocal(
                                      produtoVenda!.reference));
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CarrinhoWidget(),
                                ),
                                (r) => false,
                              );

                              setState(() {});
                            },
                            text: 'Adicionar ao Carrinho',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
