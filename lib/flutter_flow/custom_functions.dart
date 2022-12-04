import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double subtotalProduto(
  double valor,
  int quantidade,
) {
  // Add your function code here!
  return valor * quantidade;
}

double subtotalCarrinho(
  List<ProdutoVendaRecord> todosPVenda,
  List<DocumentReference> referenciaLocal,
) {
  // Add your function code here!
  double resultado = 0.0;
  for (var pvenda in todosPVenda) {
    for (var rLocal in referenciaLocal) {
      if (pvenda.reference == rLocal) {
        resultado = resultado + pvenda.valorSubtotal!;
      }
    }
  }
  return resultado;
}

double totalCarrinho(
  List<ProdutoVendaRecord> todosPVenda,
  List<DocumentReference> referenciaLocal,
  double valorEntrega,
) {
  // Add your function code here!
  double resultado = 0.0;
  for (var pvenda in todosPVenda) {
    for (var rLocal in referenciaLocal) {
      if (pvenda.reference == rLocal) {
        resultado = resultado + pvenda.valorSubtotal!;
      }
    }
  }
  return resultado + valorEntrega;
}

bool carrinhoNaoVazio(List<DocumentReference>? localRefer) {
  var resposta;

  if (localRefer!.isEmpty) {
    resposta = false;
  } else {
    resposta = true;
  }

  return resposta;
}
