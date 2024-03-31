enum EnumMeses { jan, fev, mar, abr, maio, jun, jul, ago, set, out, nov, dez }

extension DadosMeses on EnumMeses {
  String get id {
    switch (this) {
      case EnumMeses.jan:
        return "1";
      case EnumMeses.fev:
        return "2";
      case EnumMeses.mar:
        return "3";
      case EnumMeses.abr:
        return "4";
      case EnumMeses.maio:
        return "5";
      case EnumMeses.jun:
        return "6";
      case EnumMeses.jul:
        return "7";
      case EnumMeses.ago:
        return "8";
      case EnumMeses.set:
        return "9";
      case EnumMeses.out:
        return "10";
      case EnumMeses.nov:
        return "11";
      case EnumMeses.dez:
        return "12";
    }
  }

  String get descricao {
    switch (this) {
      case EnumMeses.jan:
        return "Janeiro";
      case EnumMeses.fev:
        return "Fevereiro";
      case EnumMeses.mar:
        return "Março";
      case EnumMeses.abr:
        return "Abril";
      case EnumMeses.maio:
        return "Maio";
      case EnumMeses.jun:
        return "Junho";
      case EnumMeses.jul:
        return "Julho";
      case EnumMeses.ago:
        return "Agosto";
      case EnumMeses.set:
        return "Setembro";
      case EnumMeses.out:
        return "Outubro";
      case EnumMeses.nov:
        return "Novembro";
      case EnumMeses.dez:
        return "Dezembro";
    }
  }
}
