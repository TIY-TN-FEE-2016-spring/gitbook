# Wednesday March 23

## Daily JS

Write a class/Constructor called Pokemon

A Pokemon should have
- A constructor with `name` and `hp` arguments
- An `getAttackStrength` method that returns half of the current Pokemon's `hp`

```js
class Pokemon {
  constructor(name, xp, hp) {
    this.name = name;
    this.maxHp = hp;
    this.hp = hp;
  }

  getAttackStrength() {
    return this.maxHp / 2;
  }

  takeDamage(amount) {
    this.hp = this.hp - amount;
    // this.hp -= amount;
  }
}

const charmander = new Pokemon(`Charmander`, 5, 20);
const pikachu = new Pokemon(`Pikachu`, 20, 15);

while (charmander.hp > 0 && pikachu.hp > 0) {
  console.log(`Round Start Charmander HP:`, charmander.hp);
  console.log(`Round Start Pikachu HP:`, pikachu.hp);

  // Pikachu attacks Charmander
  charmander.takeDamage(pikachu.getAttackStrength());

  // Charmander attacks Pikachu
  pikachu.takeDamage(charmander.getAttackStrength());
}

console.log(`Charmander Final HP:`, charmander.hp);
console.log(`Pikachu Final HP:`, pikachu.hp);
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

*

### Common Struggles

*

## Topics

- Writing and Reading Tests

## Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-04-03

## Homework

Tonight continue to work on the login form assignment

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/12-login-form
