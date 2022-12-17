import '../classes/MallardDuck.dart';
import '../classes/RedHeadDuck.dart';
import '../classes/RubberDuck.dart';
import '../classes/WoodDuck.dart';
import '../classes/pato.dart';

/* 
Ponto de partida
Simulador de patos....
*/

void main() {
  List<Pato> patos = [];
  patos.add(MallardDuck());
  patos.add(RubberDuck());
  patos.add(RedHeadDuck());
  patos.add(WoodDuck());

  for (Pato pato in patos) {
    pato.exibir();
    pato.grasnar();
    pato.nadar();
    pato.voar();
    print("");
  }
}

/*
! Discussão sobre solução original
# O padrão Strategy foi adequado, considerados os requisitos iniciais:
* 1. Cada tipo de pato tinha duas opções para o comportamento de voar
* 2. Cada tipo de pato tinha três opções para o comportamento de grasnar
* 3. Essas opções eram definidas na criação do pato e não se alteravam durante
* a execução
*/

/*
! Em busca de novas emoções...
# The Wonderful World of Dungeons & Ducks

! # Do simulador para um embrião de jogo:

! A cada iteração, um novo tipo de pato é criado
* • Tipo de pato é selecionado aleatoriamente
* • Cada pato precisa ter um identificador numérico único
* • Cada pato inicia com um poder de luta padrão (10), que vai sendo decrementado a cada iteração

! A partir da terceira iteração, patos lutam em busca da hegemonia
* • Patos com poder de luta 0 são eliminados
* • Se todos os patos restantes são do mesmo tipo, eles venceram
* • Caso contrário, dois patos de tipos diferentes são selecionados e se enfrentam
* • O pato com maior poder de luta vence e recebe metade dos pontos do adversário, que é eliminado

# Novas demandas e operações sobre patos:
! Pontos para a luta combinam:
• Poder de luta atual
• +3 pontos se pode voar
• +2 pontos se pode grasnar
• +1 ponto se pode guinchar

! Antes da batalha, patos podem ser atingidos por feitiços que mudam seus comportamentos:
* • Reverte comportamento de voo
* • Se pato voava, passa a não voar; se não voava, passa a voar
* • Altera comportamento de grasnar
* • Troca comportamento inicial por um dos outros dois, aleatoriamente
--> Estado original é restaurado após batalha

! Oportunidades para padrões de projeto
* Padrão de criação para a construção de patos
* Padrão de estrutura para agregar temporariamente as funcionalidades
* de luta
* Padrão de comportamento para salvar e restaurar estado
* Strategy é o padrão mais adequado ainda?
*/