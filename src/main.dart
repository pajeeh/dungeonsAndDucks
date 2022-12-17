class Character {
  String name;
  int level;
  int hitPoints;
  int attack;
  int defense;

  Character(this.name, this.level, this.hitPoints, this.attack, this.defense);

  void attack(Character target) {
    int damage = this.attack - target.defense;
    if (damage > 0) {
      target.hitPoints -= damage;
      print('$name atacou $target e causou $damage de dano!');
    } else {
      print('$name atacou $target, mas o ataque foi bloqueado!');
    }
  }
}

void main() {
  Character player = Character('Jogador', 1, 10, 5, 2);
  Character enemy = Character('Inimigo', 1, 8, 4, 3);

  player.attack(enemy);
  enemy.attack(player);
}
