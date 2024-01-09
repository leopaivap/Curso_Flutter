import 'package:math_expressions/math_expressions.dart';

class Calculadora {
  bool verificaCaractere(String mensagemVisor) {
    if (mensagemVisor.contains('+') ||
        mensagemVisor.contains('*') ||
        mensagemVisor.contains('/') ||
        mensagemVisor.contains('%')) {
      return false;
    }

    return true;
  }

  bool verificaPonto(String mensagemVisor) {
    return true;
  }

  double igual(String mensagemVisor) {
    String variavel1 = '', variavel2 = '';

    int i = 0;
    bool notNull = false;
    for (i = 0; i < mensagemVisor.length; i++) {
      if (mensagemVisor[i] == '+' ||
          mensagemVisor[i] == '*' ||
          mensagemVisor[i] == '/') {
        variavel1 = mensagemVisor.substring(0, i);
        variavel2 = mensagemVisor.substring(i + 1, mensagemVisor.length);
        notNull = true;
        break;
      }
    }

    Variable v1 = Variable(variavel1);
    Variable v2 = Variable(variavel2);

    ContextModel contexto = ContextModel();
    contexto.bindVariable(v1, Number(double.parse(variavel1)));
    contexto.bindVariable(v2, Number(double.parse(variavel2)));

    Expression expressao;
    if (mensagemVisor[i] == '+')
      expressao = Plus(v1, v2);
    else if (mensagemVisor[i] == '*')
      expressao = Times(v1, v2);
    else if (mensagemVisor[i] == '/')
      expressao = Divide(v1, v2);
    else {
      // Se não houver operador, retorne o valor inicial
      return double.parse(variavel1);
    }

    return expressao.evaluate(EvaluationType.REAL, contexto);
  }
}
