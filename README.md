# p5

## canvas

```js
function setup() {
  createCanvas(400, 400);
  console.log(width, height);
}
```

## Formas

```js
ellipse(x, y, ancho, alto);
ellipse(x, y, ancho, tamaño);
rect(x, y, ancho, alto);
rect(x, y, ancho, tamaño);
triangle(x1, y1, x2, y2, x3, y3);
line(x1, y1, x2, y2);
```

## Color

```js
fill(color);
stroke(color);
colorMode(RGB, 255); # 0 - 255
colorMode(RGB, 4); # 0 - 4
colorMode(HSB, 360, 100, 100);
```
## Mouse

```js
ellipse(mouseX, mouseY, 50, 50);

if (mouseIsPressed) {
  fill(0);
} else {
  fill(255);
}

function mousePressed() {
  console.log('mousePressed');
}

function mouseReleased() {
  console.log('mouseReleased');
}

function mouseMoved() {
  console.log('mouseMoved');
}
```

## Teclado

```js
function keyPressed() {
  console.log('keyPressed', key);
}

function keyReleased() {
  console.log('keyReleased', key);
}
```

## frameCount

```js
ellipse(frameCount%width, height/2, 5);
```

## random

```js
ellipse(random(width), random(height), 5);
```

## noise

```js
let x = noise(frameCount/100)*width;
let y = noise(frameCount/100+100)*height;
ellipse(x, y, 5); 
```

## map

```js
let x = frameCount%width;
let hue = map(x, 0, width, 0, 360);
```

## translate

```js
translate(width/2, height/2);
ellipse(0, 0, 50);
```

## rotate

```js
rotate(frameCount/100);
rect(0, 0, 50);
```

## push/pop

```js
push();
translate(width/2, height/2);
rotate(frameCount/100);
rect(0, 0, 50);
pop();
```


