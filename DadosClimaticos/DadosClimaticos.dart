// Lista das capitais brasileiras
List<String> cidades = [
  'Aracaju',
  'Belém',
  'Belo Horizonte',
  'Boa Vista',
  'Brasília',
  'Campo Grande',
  'Cuiabá',
  'Curitiba',
  'Florianópolis',
  'Fortaleza',
  'Goiânia',
  'João Pessoa',
  'Macapá',
  'Maceió',
  'Manaus',
  'Natal',
  'Palmas',
  'Porto Alegre',
  'Porto Velho',
  'Recife',
  'Rio Branco',
  'Rio de Janeiro',
  'Salvador',
  'São Luís',
  'São Paulo',
  'Teresina',
  'Vitória'
];

// Lista dos estados brasileiros
List<String> estados = [
  'Sergipe',
  'Pará',
  'Minas Gerais',
  'Roraima',
  'Distrito Federal',
  'Mato Grosso do Sul',
  'Mato Grosso',
  'Paraná',
  'Santa Catarina',
  'Ceará',
  'Goiás',
  'Paraíba',
  'Amapá',
  'Alagoas',
  'Amazonas',
  'Rio Grande do Norte',
  'Tocantins',
  'Rio Grande do Sul',
  'Rondônia',
  'Pernambuco',
  'Acre',
  'Rio de Janeiro',
  'Bahia',
  'Maranhão',
  'São Paulo',
  'Piauí',
  'Espírito Santo'
];

// Lista das temperaturas anuais máximas das capitais brasileiras
List<double> tmaxs = [
  35.3,
  38.5,
  37.4,
  42.0,
  35.8,
  40.2,
  44.0,
  35.2,
  39.7,
  37.0,
  40.4,
  34.8,
  39.6,
  38.4,
  39.0,
  34.0,
  43.0,
  40.6,
  40.9,
  35.1,
  39.8,
  42.5,
  37.0,
  37.2,
  38.8,
  41.1,
  39.6
];

// Lista das temperaturas anuais médias das capitais brasileiras
List<double> tmeds = [
  26.0,
  25.9,
  21.1,
  27.4,
  20.6,
  22.8,
  31.8,
  16.8,
  20.4,
  26.6,
  23.2,
  26.1,
  26.6,
  24.8,
  26.7,
  26.0,
  25.0,
  19.5,
  25.6,
  25.5,
  24.8,
  31.9,
  28.3,
  26.1,
  23.2,
  27.1,
  24.8
];

// Lista das temperaturas anuais mínimas das capitais brasileiras
List<double> tmins = [
  11.0,
  18.5,
  0.1,
  10.2,
  1.6,
  -0.9,
  3.3,
  -5.4,
  0.7,
  19.4,
  2.6,
  15.0,
  19.6,
  11.3,
  12.0,
  10.6,
  11.5,
  -4.0,
  7.4,
  15.0,
  6.0,
  11.3,
  15.3,
  13.1,
  -2.1,
  10.4,
  -1.3
];

// Lista dos totais anuais de precipitação das capitais brasileiras
List<double> precs = [
  1695.2,
  2921.7,
  1463.7,
  1420.4,
  1540.6,
  1533.8,
  1342.3,
  1483.4,
  1517.8,
  1608.4,
  1571.4,
  2145.4,
  2561.3,
  2070.5,
  2307.4,
  1465.4,
  1301.2,
  1320.2,
  2255.4,
  2417.6,
  1947.5,
  1251.0,
  2144.1,
  2290.0,
  1441.0,
  1393.2,
  1252.3
];

void CriarList() {
  for (var i = 0; i < cidades.length; i++) {
    var map = {};
    map['cidade'] = cidades[i];
    map['estado'] = estados[i];
    map['tmax'] = tmaxs[i];
    map['tmed'] = tmeds[i];
    map['tmin'] = tmins[i];
    map['prec'] = precs[i];
    dadosClimaticos.add(map);
  }
}

Map CidadeMaisFria() {
  var temp_aux = dadosClimaticos[0]['tmin'];
  var cidadeMaisFria = {};

  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (dadosClimaticos[i]['tmin'] < temp_aux) {
      temp_aux = dadosClimaticos[i]['tmin'];
      cidadeMaisFria = dadosClimaticos[i];
    }
  }

  return cidadeMaisFria;
}

Map CidadeMaisQuente() {
  var temp_aux = dadosClimaticos[0]['tmax'];
  var cidadeMaisQuente = {};

  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (dadosClimaticos[i]['tmax'] > temp_aux) {
      temp_aux = dadosClimaticos[i]['tmax'];
      cidadeMaisQuente = dadosClimaticos[i];
    }
  }

  return cidadeMaisQuente;
}

Map CidadeMaiorPrecipitacao() {
  var temp_aux = dadosClimaticos[0]['prec'];
  var cidadeMaiorPrec = {};

  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (dadosClimaticos[i]['prec'] > temp_aux) {
      temp_aux = dadosClimaticos[i]['prec'];
      cidadeMaiorPrec = dadosClimaticos[i];
    }
  }

  return cidadeMaiorPrec;
}

Map CidadeMenorPrecipitacao() {
  var temp_aux = dadosClimaticos[0]['prec'];
  var cidadeMenorPrec = {};

  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (dadosClimaticos[i]['prec'] < temp_aux) {
      temp_aux = dadosClimaticos[i]['prec'];
      cidadeMenorPrec = dadosClimaticos[i];
    }
  }

  return cidadeMenorPrec;
}

double MediaTempsMinimas() {
  var soma = 0.0;
  var media = 0.0;

  for (var temps in tmins) soma += temps;

  media = soma / tmins.length;

  return media;
}

double MediaTempsMaximas() {
  var soma = 0.0;
  var media = 0.0;

  for (var temps in tmaxs) soma += temps;

  media = soma / tmaxs.length;

  return media;
}

double MediaTempsMedias() {
  var soma = 0.0;
  var media = 0.0;

  for (var temps in tmeds) soma += temps;

  media = soma / tmeds.length;

  return media;
}

double MediaPrecipitacoes() {
  var soma = 0.0;
  var media = 0.0;

  for (var prec in precs) soma += prec;

  media = soma / precs.length;

  return media;
}

void CidadesBaixoMedia(double media) {
  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (tmeds[i] < media) {
      cidadesMaisFrias.add(dadosClimaticos[i]);
    }
  }
}

void CidadesAcimaMedia(double media) {
  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (tmeds[i] > media) {
      cidadesMaisQuentes.add(dadosClimaticos[i]);
    }
  }
}

void CidadesPrecipitacaoBaixoMedia(double media) {
  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (precs[i] < media) {
      cidadesMaisSecas.add(dadosClimaticos[i]);
    }
  }
}

void CidadesPrecipitacaoAcimaMedia(double media) {
  for (int i = 0; i < dadosClimaticos.length; i++) {
    if (precs[i] > media) {
      cidadesMaisChuvosas.add(dadosClimaticos[i]);
    }
  }
}

String Fill(String text, int numChars, String char) {
  for (var i = 0; i < numChars; i++) {
    text += char;
  }
  return text;
}

String Fit({
  required String text,
  required int slotSize,
  int textJustification = 1,
  String char = ' ',
}) {
  var container = '';
  var delta = slotSize - text.length;

  if (slotSize < 4) {
    return 'Erro: O tamanho minimo e 4';
  }

  if (delta < 0) {
    container = '${text.substring(0, slotSize - 4)}... ';
    return container;
  }
  if (textJustification == 1) {
    container = text;
    container = Fill(container, delta, char);
  }
  if (textJustification == 3) {
    container = Fill(container, delta, char);
    container += text;
  }

  if (textJustification == 2) {
    container = Fill(container, (delta ~/ 2), char);
    container += text;
    container = Fill(container, (delta ~/ 2), char);
    if (delta % 2 == 1) {
      container += char;
    }
  }
  return container;
}

void ExibirDados(
  var list, {
  var cidade = true,
  var estado = true,
  var tmax = true,
  var tmed = true,
  var tmin = true,
  var prec = true,
}) {
  var i = 1;

  for (var map in list) {
    var msg = '';

    if (i.toString().length == 1) {
      msg += 0.toString();
    }
    msg += i.toString() + '  ';

    if (cidade) {
      msg += Fit(text: map['cidade'], slotSize: 18);
    }
    if (estado) {
      msg += Fit(text: map['estado'], slotSize: 20);
    }
    if (tmax) {
      msg += Fit(
          text: map['tmax'].toString() + ' ºC',
          slotSize: 12,
          textJustification: 2);
    }
    if (tmed) {
      msg += Fit(
          text: map['tmed'].toString() + ' ºC',
          slotSize: 12,
          textJustification: 2);
    }
    if (tmin) {
      msg += Fit(
          text: map['tmin'].toString() + ' ºC',
          slotSize: 12,
          textJustification: 2);
    }
    if (prec) {
      msg += Fit(
          text: map['prec'].toString() + ' mm ',
          slotSize: 12,
          textJustification: 2);
    }
    print(msg);
    i++;
  }
}

String Line(
  int quantidade, {
  String char = '=',
}) {
  var line = '';

  for (var i = 0; i < quantidade; i++) {
    line += char;
  }

  return line;
}

var dadosClimaticos = [];
var cidadesMaisQuentes = [];
var cidadesMaisFrias = [];
var cidadesMaisChuvosas = [];
var cidadesMaisSecas = [];

void main() {
  print('\x1B[2J\x1B[0;0H');

  var map;
  CriarList();

  print(Line(90));
  print('Dados Climáticos: Cidades Brasileiras');
  print(Line(90));
  ExibirDados(dadosClimaticos);
  print(Line(90));

  map = CidadeMaisQuente();
  print('Maior temperatura Máxima: ${map['cidade']} ${map['tmax']} ºC');
  map = CidadeMaisFria();
  print('Maior temperatura Mínima: ${map['cidade']} ${map['tmin']} ºC');
  map = CidadeMaiorPrecipitacao();
  print('Maior precipitacao: ${map['cidade']} ${map['prec']} mm');
  map = CidadeMenorPrecipitacao();
  print('Menor precipitacao: ${map['cidade']} ${map['prec']} mm');
  print(Line(90, char: '-'));

  var tMedia = MediaTempsMedias();
  print('Média temperaturas: ${tMedia.toStringAsFixed(1)} ºC');
  print(
      'Média temperaturas máximas: ${MediaTempsMaximas().toStringAsFixed(1)} ºC');
  print(
      'Média temperaturas mínimas: ${MediaTempsMinimas().toStringAsFixed(1)} ºC');
  var precMedia = MediaPrecipitacoes();
  print('Média precipitações anuais: ${precMedia.toStringAsFixed(1)} mm');
  print(Line(90));

  CidadesAcimaMedia(tMedia);

  print(
      'Lista cidades mais quentes acima da média (${tMedia.toStringAsFixed(2)} ºC) ');

  print(Line(90));
  ExibirDados(cidadesMaisQuentes, tmax: false, tmin: false, prec: false);
  print(Line(90));

  CidadesBaixoMedia(tMedia);

  print(
      'Lista cidades mais frias abaixo da média (${tMedia.toStringAsFixed(2)} ºC) ');
  print(Line(90));
  ExibirDados(cidadesMaisFrias, tmax: false, tmin: false, prec: false);
  print(Line(90));

  CidadesPrecipitacaoAcimaMedia(precMedia);

  print(
      'Lista cidades com chuvas acima da média (${precMedia.toStringAsFixed(2)} mm) ');
  print(Line(90));
  ExibirDados(cidadesMaisChuvosas, tmax: false, tmed: false, tmin: false);
  print(Line(90));

  CidadesPrecipitacaoBaixoMedia(precMedia);

  print(
      'Lista cidades com chuvas abaixo da média (${precMedia.toStringAsFixed(2)} mm) ');
  print(Line(90));
  ExibirDados(cidadesMaisSecas, tmax: false, tmed: false, tmin: false);
  print(Line(90));
}
