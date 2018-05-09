---
weight: 10
title: Introduction
---

# Introducción

## ¿Qué es esto de programación competitiva?

{{< figure src="images/acm-icpc-wf-2018.jpg"
    title="ACM-ICPC World Finals 2018"
    attr="icpc.baylor.edu" attrlink="//icpc.baylor.edu" >}}

La programación competitiva es un deporte mental donde los competidores tienen que escribir programas para resolver varios problemas lo más rápido posible.

Los problemas son problemas conocidos de ciencia de la computación, y por conocidos quiero decir que ya tienen solución. Por lo menos el creador de los problemas (o _problem setter_) los ha resuelto.

Resolver un problema significa escribir un programa que lea unos datos de entrada (_input_) y produzca unos datos de salida (_output_) según la descripción del problema. Una vez se haya resuelto un problema este será enviado a un juez (_judge_) para su revisión. El juez probará el programa con varios casos de prueba y revisará si la salida es igual a la salida dada por el problem setter. Finalmente el juez le responderá al competidor que envió el programa si su solución es correcta o no.

Quién resuelva la mayor cantidad de problemas en el menor tiempo posible gana.

## ¿Y por qué debería competir o entrenar?

Hay bastantes beneficios de practicar la programación competitiva, por ejemplo:

- Aprenderás varios algoritmos y estructuras de datos.
- Programarás de forma más rápida y eficiente.
- Las clases de la universidad te serán más fáciles.
- Llevarás tus capacidades al límite.
- Tendrás la oportunidad de viajar para concursar.
- Mejorarás tu compresión de lectura en inglés.
- Las entrevistas de trabajo serán pan comido.

Y hay muchas más razones, sin olvidar por supuesto que es bastante entretenido.

## Muy bien, ¿hay algún pre-requisito?

```cpp
#include <iostream>
using namespace std;

int my_pow(int x, int p)
{
    if (p == 0) return 1.0;
    if (p == 1) return x;
    int a = my_pow(x, p / 2);
    return a * a * (p % 2 == 0 ? 1.0 : x);
}

int main()
{
    int n;
    cin >> n;

    while(n--)
    {
        int x, p;
        cin >> x >> p;
        cout << my_pow(x, p) << endl;
    }

    return 0;
}
```

```python
def my_pow(x, p):
    if p == 0: return 1
    if p == 1: return x
    a = my_pow(x, p // 2)
    return a * a * (1 if p % 2 == 0 else x)

n = int(input())

for _ in range(n):
    x = int(input())
    p = int(input())
    print(my_pow(x, p))
```

Hay algunos requisitos básicos:

- Saber inglés (por lo menos lo necesario para entender los problemas).
- Saber programación básica.
- Tener el deseo de aprender.

En esta guía te enseñaré algunos conceptos de programación, pero ya deberías entender lo que son variables, tipos de datos, operadores, estructuras de control de flujo (_if_, _else_, _for_, _while_, etc.), funciones, arreglos, entrada y salida, módulos (_import_, _include_), clases o estructuras, etc.

Si todavía no conoces todos esos conceptos no hay problema, puedes ir revisando [tutoriales de programación](#tutoriales-de-programación) en el camino, por ahora entender el código de la derecha debería ser suficiente.

Ahora sobre los lenguajes de programación.

## Lenguajes de programación

Los lenguajes de programación que usaré en esta guía son Python 3 y C++11. Elegí estos lenguajes porque Python suele ser el primer lenguaje que te enseñan, y C++ es probablemente el lenguaje más usado en el mundo de la programación competitiva. Si gustas usar otro lenguaje te recomiendo escoger uno de estos:

- Java
- C
- C++
- Python 2
- Python 3
- Kotlin

Listo esos lenguajes porque son los permitidos en los concursos del ACM-ICPC. El ICPC es el concurso de programación más importante y más adelante escribiré de él. Si quieres saber más sobre el ambiente de programación del ICPC (software instalado, versiones de los lenguajes, flags de compilación, etc.) revisa [estas reglas](https://icpc.baylor.edu/worldfinals/programming-environment).

Ahora estamos listos para resolver nuestro primer problema.
