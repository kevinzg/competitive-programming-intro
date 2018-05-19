---
weight: 40
title: Input/Output
---

# Entrada y salida

{{< figure src="images/stdstreams.png"
    title="Standard Streams"
    attr="wikimedia.org" attrlink="//commons.wikimedia.org/wiki/File:Stdstreams-notitle.svg" >}}

Los problemas siempre mencionan que la entrada debe ser leída del _standard input_ y la salida debe ser impresa en el _standard output_, pero ¿qué significa eso? El _standard input_ o `stdin` es un archivo especial al que podemos acceder desde nuestro programa para leer de él. De igual forma, el _standard output_ o `stdout` es otro archivo especial en el que podemos escribir.

Cuando ejecutamos un programa desde la terminal el intérprete de la línea de comandos (_shell_) asigna el archivo `stdin` a la entrada de teclado y el archivo `stdout` a la pantalla de la terminal. Eso quiere decir que lo que escribamos en la terminal podrá ser leído del archivo `stdin` y lo que imprimamos al archivo `stdout` será mostrado en la pantalla.

Y ¿cómo leemos y escribimos a esos archivos? Pues ya lo hemos estado haciendo. Para leer del archivo `stdin` en Python usamos la función `input()`, y en C++ el objeto `cin`. Asimismo, para imprimir al archivo `stdout` usamos la función `print()` y el objeto `cout`.

## Fin de archivo

Hay ciertos problemas que no indican que tan larga es la entrada y por lo tanto debemos leer hasta que termine el archivo. Para saber si el archivo ha terminado existe una marca especial llamada _end-of-file_ o `EOF` que debemos detectar.

En Python se puede iterar todo el objeto archivo (_file object_) `stdin` del módulo `sys`, él mismo ya sabe cuando termina. En C++ lo recomendado es chequear el objeto `cin` como un valor booleano, si te da `false` significa que llegamos al final.

Si estás confundido no te preocupes, los ejemplos te mostrarán cómo hacerlo.

{{% note %}}
Si quieres ingresar manualmente un `EOF` desde la terminal deberás usar la combinación de teclas `Ctrl + D` en Linux o `Ctrl + Z` en Windows.
{{% /note %}}

{{% clearfix %}}

## Entrada

```cpp
#include <iostream>
#include <string>
#include <sstream>
using namespace std;

int main()
{
    // ...
}
```

```python
from sys import stdin

# ...
```

Aquí te dejo unos ejemplos de entrada comunes y su código para leerlos. Ten en cuenta que la forma expuesta no es la única para leer del `stdin` y que la lista de ejemplos está lejos de estar completa.

Vas a encontrar problemas con los que tendrás dificultades con la entrada. Cuando esto suceda dale una leída a la documentación de entrada y salida de [Python](https://docs.python.org/3/library/io.html) o [C++](http://en.cppreference.com/w/cpp/io) y trata de eliminar esas dificultades.

Los ejemplos de Python necesitan importar `stdin` del módulo `sys` y los de C++ incluir las cabeceras `iostream`, `string` y `sstream`.

{{% clearfix %}}

### Ejemplo 1

```cpp
int a, b;
while (cin >> a >> b)
{
    // ...
}
```

```python
for line in stdin:
    a, b = map(int, line.split())
    # ...
```

La entrada contiene múltiples casos de prueba, una línea por cada caso. Cada línea consiste de dos enteros `a` y `b` separados por un espacio.

{{% clearfix %}}

### Ejemplo 2

```cpp
int N;
int a, b;

cin >> N;

for (int t = 0; t < N; ++t)
{
    cin >> a >> b;
    // ...
}
```

```python
N = int(input())

for _ in range(N):
    a, b = map(int, input().split())
    # ...
```

La entrada contiene un entero `N` en la primer línea, y luego `N` líneas continúan. Cada línea consiste de un par de enteros `a` y `b`, separados por un espacio.

{{% clearfix %}}

### Ejemplo 3

```cpp
int a, b;

while (cin >> a >> b && !(a == 0 && b == 0))
{
    // ...
}
```

```python
while True:
    a, b = map(int, input().split())

    if a == 0 and b == 0:
        break

    # ...
```

La entrada contiene múltiples casos de prueba, una línea por cada caso. Cada línea contiene un par de enteros `a` y `b` separados por un espacio. Un caso de prueba con los valores `0 0` indica el fin de la entrada y no deberá ser procesado.

{{% clearfix %}}

### Ejemplo 4

```cpp
int N;

while (cin >> N && N != 0)
{
    vector<int> a(N);

    for (int i = 0; i < N; ++i) cin >> a[i];

    // ...
}
```

```python
for line in stdin:
    N, *a = map(int, line.split())

    if N == 0:
        break

    # ...
```

La entrada contiene múltiples casos de prueba, una línea por cada caso. Cada línea contiene un entero `N` seguido de `N` enteros. Un caso de prueba empezando con `0` indica el fin de la entrada y no deberá ser procesado.

{{% note lang="python" %}}
La sintaxis `a, *b = ...` se llama [extended iterable unpacking](https://www.python.org/dev/peps/pep-3132/#abstract).
{{% /note %}}

{{% clearfix %}}

### Ejemplo 5

```cpp
string line;

while (getline(cin, line))
{
    stringstream ss(line);
    vector<int> a;
    int x;

    while(ss >> x) a.push_back(x);

    // ...
}
```

```python
for line in stdin:
    a = map(int, line.split())

    # ...
```

La entrada contiene múltiples casos de prueba, una línea por cada caso. Cada línea consiste de una lista de enteros separados por un espacio.

{{% note lang="cpp" %}}
[`stringstream`](http://en.cppreference.com/w/cpp/io/basic_stringstream/basic_stringstream) es una clase similar a la de `cin` y `cout` que escribe o lee a un string en vez de a un archivo. En este caso lo iniciamos con el string que nos da `getline` y luego extraemos los enteros uno por uno.
{{% /note %}}

{{% clearfix %}}

### Ejemplo 6

```cpp
int T;

cin >> T;
cin.get();

while (T--)
{
    string line;

    while (getline(cin, line) && !line.empty())
    {
        stringstream ss(line);
        vector<string> words;
        string word;

        while(ss >> word) words.push_back(word);

        // ...
    }    
}
```

```python
T = int(input())

for _ in range(T):
    while True:
        line = input()

        if not line:
            break

        words = line.split()

        # ...
```

La primer línea de la entrada es el número de casos de prueba, `T`. Cada caso de prueba consiste de varias líneas, cada línea consiste de una o varias palabras separadas por uno o más espacios. Los casos de prueba están separados por una línea en blanco.

{{% note lang="cpp" %}}
Fíjate en la llamada a `cin.get()`. El método [`get()`](http://en.cppreference.com/w/cpp/io/basic_istream/get) extrae un carácter de la entrada. En este caso ese carácter es el salto de línea `'\n'` que está después de `T`. Si no extraemos ese salto de línea la llamada que hacemos luego a `getline()` sería un string vacío.
{{% /note %}}

{{% clearfix %}}

## Salida

La salida de los problemas no suele traer tantas dificultades, pero a veces pueden pedir un formato en especial.

{{% note %}}
Algo a tomar en cuenta son los saltos de línea o espacios demás. Los jueces modernos no le dan mucha importancia a si hay un salto de línea al final de la salida o no, pero hay problemas o jueces en los que eso te puede dar _presentation error_ o incluso _wrong answer_.
{{% /note %}}

### Ejemplo 1

```cpp
vector<string> words = {"alice", "bob", "charlie"};

for (string &word : words) cout << word << "\n";
```

```python
words = ['alice', 'bob', 'charlie']
print('\n'.join(words))
```

>`alice`  
>`bob`  
>`charlie`  
>`<línea en blanco>`

Imprimir una lista de palabras con un salto de línea después de cada una.

{{% clearfix %}}

### Ejemplo 2

```cpp
vector<int> numbers = {1, 6, 1, 8, 0};
string sep = "";

for (int number : numbers)
{
    cout << sep << number;
    sep = ", ";
}
```

```python
numbers = [1, 6, 1, 8, 0]
print(', '.join(map(str, numbers)), end='')
```

>`1 6 1 8 0`  

Imprimir una lista de enteros separados por una coma y un espacio. No imprimir una línea en blanco al final.

{{% note lang="python" %}}
En Python 3 la función `print()` imprime un salto de línea al final, si quieres evitar eso puedes hacerlo con el parámetro `end`. Por ejemplo, `print('Hi', end='!')` imprimirá un `!` inmediatamente después de `Hi` sin ningún salto de línea.
{{% /note %}}

{{% clearfix %}}

### Ejemplos de formato

```cpp
#include <iostream>
#include <iomanip>
#include <string>
#include <bitset>
using namespace std;

int main()
{
    int answer = 42;
    double phi = 1.618033989;

    cout << "Answer: " << answer << "\n";
    cout << "Binary: " << bitset<8>(answer) << "\n";
    cout << "Hexadecimal: 0x" << hex << uppercase << answer << "\n";
    cout << "With zeroes: " << dec << setw(4) << setfill('0') << answer << "\n";
    cout << "Positive sign: " << setw(8) << internal << showpos << setfill('_') << answer << "\n";
    cout << "Padding: " << setw(6) << left << noshowpos << setfill('-') << answer << "\n";
    cout << dec << right << noshowpos << nouppercase << setfill(' ') << "\n"; // Reset

    cout << "Golden ratio: " << phi << "\n";
    cout << "Less precision: " << fixed << setprecision(3) << phi << "\n";
    cout << "No precision: " << fixed << setprecision(0) << phi << "\n";
    cout << "With zeroes: " << fixed << setprecision(3) << setw(7) << setfill('0') << phi << "\n";
    cout << "Scientific: " << scientific << phi;
    cout << defaultfloat << setprecision(6) << setfill(' '); // Reset
    return 0;
}
```

```python
answer = 42
phi = 1.618033989

print('Answer: {:d}'.format(answer))
print('Binary: {:08b}'.format(answer))
print('Hexadecimal: 0x{:X}'.format(answer))
print('With zeroes: {:04d}'.format(answer))
print('Positive sign: {:_=+8d}'.format(answer))
print('Padding: {:-<6d}'.format(answer), end='\n\n')

print('Golden ratio: {:.5f}'.format(phi))
print('Less precision: {:.3f}'.format(phi))
print('No precision: {:.0f}'.format(phi))
print('With zeroes: {:07.3f}'.format(phi))
print('Scientific: {:.3e}'.format(phi), end='')
```

>`Answer: 42`  
>`Binary: 00101010`  
>`Hexadecimal: 0x2A`  
>`With zeroes: 0042`  
>`Positive sign: +_____42`  
>`Padding: 42----`  
>`<línea en blanco>`  
>`Golden ratio: 1.61803`  
>`Less precision: 1.618`  
>`No precision: 2`  
>`With zeroes: 001.618`  
>`Scientific: 1.618e+00`

En Python lo mejor es usar el método `format` de los strings. [PyFormat](https://pyformat.info/) es un _cheat sheet_ con varios ejemplos.

En C++ se utiliza lo que se llama [manipuladores de salida](https://en.cppreference.com/w/cpp/io/manip). Estos manipuladores son objetos o funciones que modifican al flujo (por ejemplo `cout` o un objeto de la clase `stringstream`) causando que imprima de manera diferente. Los manipuladores que más usarás son:

- `setw`. El ancho del string de salida.
- `setfill`. El carácter con el que se llena el string de salida.
- `left`, `right`, `internal`. La posición de la variable en el string de salida.
- `dec`, `hex`. La base de los enteros.
- `setprecision`. La precisión de los valores de punto flotante.
- `fixed`, `scientific`. El modo de imprimir valores de punto flotante.

Ten en cuenta que los manipuladores, excepto por `setw`, no son temporales, van a afectar todo lo que imprimas después de ser usados. Si tienes que imprimir algo después "sin formato" tendrás que revertir los cambios.

Te recomiendo que juegues con el código de la derecha cambiando valores y probando otros manipuladores o strings de formato.

{{% note lang="cpp" %}}
En C++ también puedes usar [`printf()`](http://en.cppreference.com/w/cpp/io/c/fprintf) para imprimir con formato. `printf()` es más simple que los manipuladores de salida, pero no es buena idea mezclarlo con `cout`. Solo usa uno de los dos.
{{% /note %}}

{{% clearfix %}}

## Salida de errores

```cpp
#include <iostream>
using namespace std;

int main()
{
    cerr << "bugs" << endl;
    return 0;
}
```

```python
from sys import stderr

print('bugs', file=stderr)
```

La salida de errores o `stderr` es otro archivo especial donde podemos escribir errores o mensajes de debug. Al igual que con el `stdout` los mensajes saldrán en la pantalla, pero estos no serán leídos por el juez (recuerda que él solo lee el `stdout`). De esta forma no tendremos que preocuparnos de que un mensaje extra escrito en el `stderr` nos cueste una solución correcta.
