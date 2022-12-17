/* 
Ponto de partida
Simulador de patos....
*/

import '../classes/patos/MallardDuck.dart';
import '../classes/patos/RedHeadDuck.dart';
import '../classes/patos/RubberDuck.dart';
import '../classes/patos/WoodDuck.dart';
import '../models/NivelMasmorra.dart';
import '../models/Pato.dart';
import '../project/jogo.dart';

void main() {
  // Crie os patos...
  Pato patoDeBorracha = RubberDuck();
  Pato patoDeMadeira = WoodDuck();
  Pato patoDeCabecaVermelha = RedHeadDuck();
  Pato patoSelvagem = MallardDuck();

  // Crie a lista de patos disponíveis e a lista de níveis de masmorra...
  List<Pato> patos = <Pato>[
    patoDeBorracha,
    patoDeMadeira,
    patoDeCabecaVermelha,
    patoSelvagem
  ];

// Crie os níveis de masmorra...
  NivelMasmorra nivel1 = NivelMasmorra('Nível 1', 10, patos, [], []);
  NivelMasmorra nivel2 = NivelMasmorra('Nível 2', 10, patos, [], []);
  NivelMasmorra nivel3 = NivelMasmorra('Nível 3', 10, patos, [], []);

  // Crie a lista de níveis de masmorra...
  List<NivelMasmorra> niveis = <NivelMasmorra>[nivel1, nivel2, nivel3];

  // Crie o jogo...
  Jogo jogo = Jogo(patos, niveis);

  // Inicie o jogo...
  jogo.escolherPatos(patos);

    

  // mostrar jogo na tela...
  print(jogo);
}

/*
! Discussão sobre solução original
# O padrão Strategy foi adequado, considerados os requisitos iniciais:
* 1. Cada tipo de pato tinha duas opções para o comportamento de voar
* 2. Cada tipo de pato tinha três opções para o comportamento de grasnar
* 3. Essas opções eram definidas na criação do pato e não se alteravam durante a execução

! Em busca de novas emoções...
# The Wonderful World of Dungeons & Ducks

TODO Do simulador para um embrião de jogo:

--> A cada iteração, um novo tipo de pato é criado
* • Tipo de pato é selecionado aleatoriamente
* • Cada pato precisa ter um identificador numérico único
* • Cada pato inicia com um poder de luta padrão (10), que vai sendo decrementado a cada iteração

--> A partir da terceira iteração, patos lutam em busca da hegemonia
* • Patos com poder de luta 0 são eliminados
* • Se todos os patos restantes são do mesmo tipo, eles venceram
* • Caso contrário, dois patos de tipos diferentes são selecionados e se enfrentam
* • O pato com maior poder de luta vence e recebe metade dos pontos do adversário, que é eliminado

=> Novas demandas e operações sobre patos:
<-- Pontos para a luta combinam:
• Poder de luta atual
• +3 pontos se pode voar
• +2 pontos se pode grasnar
• +1 ponto se pode guinchar

! Antes da batalha, patos podem ser atingidos por feitiços que mudam seus comportamentos:
• Reverte comportamento de voo
• Se pato voava, passa a não voar; se não voava, passa a voar
• Altera comportamento de grasnar
• Troca comportamento inicial por um dos outros dois, aleatoriamente
--> Estado original é restaurado após batalha

! Oportunidades para padrões de projeto
* Padrão de criação para a construção de patos
* Padrão de estrutura para agregar temporariamente as funcionalidades
* de luta
* Padrão de comportamento para salvar e restaurar estado
* Strategy é o padrão mais adequado ainda?
*/

/* 
ToDo : Implementar as regras de Dungeons & Ducks baseado no jogo Dungeons & Dragons;
ToDo : Implementar o padrão de projeto State para salvar e restaurar o estado dos patos;
ToDo : Implementar o padrão de projeto Decorator para adicionar as funcionalidades de luta;
ToDo : Implementar o padrão de projeto Strategy para definir os comportamentos de grasnar e voar;
ToDo : Implementar o padrão de projeto Command para executar os feitiços;
ToDo : Implementar o padrão de projeto Iterator para iterar sobre os patos;
ToDo : Implementar o padrão de projeto Composite para agrupar os patos;
ToDo : Implementar o padrão de projeto Facade para simplificar a interação com os patos;
ToDo : Implementar o padrão de projeto Adapter para adaptar os patos para o jogo;
ToDo : Implementar o padrão de projeto Template Method para definir o fluxo do jogo;
ToDo : Implementar o padrão de projeto Bridge para definir a interface do jogo;
ToDo : Implementar o padrão de projeto Proxy para proteger o jogo;
ToDo : Implementar o padrão de projeto Flyweight para otimizar o jogo;
ToDo : Implementar o padrão de projeto Chain of Responsibility para definir a ordem de execução dos feitiços;
=> para cada tipo de campo de batalha, implementar um padrão de projeto diferente;
* terrenos: floresta, montanha, lago, deserto, cidade, etc.
* clima: chuva, neve, vento, etc.
* tempo: dia, noite, anoitecer, amanhecer, etc.
* alguns tipos de patos levam vantagem em alguns tipos de terreno, clima e tempo
*/
