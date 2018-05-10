---
weight: 20
title: First Problem
---

# El primer problema

## Problema

><h3>Watermelon</h3>  

>One hot summer day Pete and his friend Billy decided to buy a watermelon. They chose the biggest and the ripest one, in their opinion. After that the watermelon was weighed, and the scales showed *w* kilos. They rushed home, dying of thirst, and decided to divide the berry, however they faced a hard problem.  
>Pete and Billy are great fans of even numbers, that's why they want to divide the watermelon in such a way that each of the two parts weighs even number of kilos, at the same time it is not obligatory that the parts are equal. The boys are extremely tired and want to start their meal as soon as possible, that's why you should help them and find out, if they can divide the watermelon in the way they want. For sure, each of them should get a part of positive weight.  
>**Input**  
The first (and the only) input line contains integer number *w* (1 ≤ *w* ≤ 100) — the weight of the watermelon bought by the boys.  
>**Output**  
Print `YES`, if the boys can divide the watermelon into two parts, each of them weighing even number of kilos; and `NO` in the opposite case.  
>**Examples**  
*Input*:  
`8`  
*Output*:  
`YES`

Vamos a resolver nuestro primer problema, el problema 4A de Codeforces, [Watermelon](http://codeforces.com/problemset/problem/4/A). Lo copio a la derecha por conveniencia.

Los problemas tienen 4 partes: enunciado, entrada, salida, y ejemplos.

- El **enunciado** es el texto donde describen el problema. Generalmente tiene una historia introductoria, y seguido la definición, probablemente implícita, del problema en sí.
- La **entrada** es la descripción de cómo se presentarán los datos en el archivo de entrada (_stdin_). También suele contener las restricciones de las variables de entrada.
- La **salida** es la descripción de cómo se debe imprimir la respuesta del problema al archivo de salida (_stdout_).
- Los **ejemplos** son casos de prueba que acompañan al problema para poder entenderlo mejor.

Los problemas también suelen tener indicado el tiempo límite y el límite de memoria, es decir, nuestro programa no puede demorar más de ese tiempo ni usar más memoria de la indicada.

{{% clearfix %}}

## Solución

```cpp
#include <iostream>
using namespace std;

int main()
{
    int w;
    cin >> w;

    if (<condición>)
        cout << "YES" << endl;
    else
        cout << "NO" << endl;

    return 0;
}
```

```python
w = int(input())

if <condición>:
    print('YES')
else:
    print('NO')
```

Después de leer el problema trata de resolverlo en tu lenguaje favorito. La solución debería verse similar al código de la derecha. Una vez hayas terminado tu código envíalo (_submit_) al juez para que lo pruebe (tienes que registrarte primero).

El juez te dirá si tu código está bien (_Accepted_) o no. Listaré algunos de los problemas comunes por los que tu programa podría fallar:

- No imprimas nada más que la respuesta. Si estás imprimiendo algo como `Ingrese el valor w:`, o `La respuesta es:` el juez lo tomará como una solución errónea.
- Las mayúsculas son diferentes a las minúsculas. Revisa la descripción del problema y observa cuál es el formato exacto en el que debes imprimir la respuesta.
- Si estás imprimiendo en el formato correcto y el juez no cede debe haber un error en la lógica de tu solución. Vuelve a leer el problema y revisa si tu código está haciendo realmente lo que pide.
- Prueba tu código con casos de prueba extremos, es decir, valores muy pequeños y muy grandes (dentro del límite dado). A veces, léase muy a menudo, los errores se suelen esconder ahí.

Si todavía no puedes resolverlo te dejo la solución para que veas donde te equivocaste:

{{% spoiler %}}
  El problema te pregunta si existen dos números enteros positivos y pares tales que su suma sea *w*. Los números existen si *w* es par excepto por el valor 2 (la única posibilidad sería 1 y 1, pero 1 no es par). Entonces, la condición que tienes completar en el código es `w % 2 == 0 and w != 2`.
{{% /spoiler %}} 

¡Enhorabuena! Ya has debido resolver tu primer problema. Si quieres resolver más [esta es una lista de los problemas en orden de dificultad](http://codeforces.com/problemset?order=BY_SOLVED_DESC).
