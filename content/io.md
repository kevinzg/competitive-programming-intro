---
weight: 40
title: Input/Output
---

# Entrada y salida

Los programas que escribas tienen 3 archivos especiales a los que pueden acceder: `stdin` (lectura), `stdout` (escritura) y `stderr` (escritura de errores).

Cuando ejecutas tu programa en la terminal, el `shell` (el intérprete de la línea de comando) asigna el archivo `stdin` a la entrada de teclado, y `stdout` y `stderr` a la salida de la terminal. Eso quiere decir que lo que escribas en la terminal podrá ser leído por tu programa desde el archivo `stdin` y lo que imprima al archivo `stdout` lo podrás ver en tu pantalla. `stderr` también imprimirá a la pantalla, pero luego veremos cuál es la diferencia con `stdin`.

## Entrada

>10 20 30

```cpp
#include <iostream>
#include <string>
using namespace std;

int main()
{
    string a; int b; float c;
    cin >> a;
    cin >> b;
    cin >> c;
    return 0;
}
```

```python
abc = input()
```

Para leer de `stdin` en Python 3 usamos la función `input()`. La función `input()` lee una línea completa, es decir hasta encontrar un salto de línea (`\n`) y devuelve la línea como un string (sin incluir el salto de línea).

En C++ se utiliza un objeto global llamado `std::cin` que se encuentra en el header `iostream`. Este objeto define al operador `>>` (que en este contexto significa _extraer_) y necesita de una variable donde guardar lo extraído. A diferencia de Python, `std::cin` ignora los espacios en blanco e intenta extraer de `stdin` un string que se pueda convertir al tipo de dato de la variable con que se esté operando.

Consideren el siguiente ejemplo. La entrada es `10 20 30`. En el caso de Python la variable `abc` tendrá toda la línea, es decir el string `10 20 30`.
En el caso de C++ el string `a` tendrá como valor el string `10`, el entero `b` será el entero 20, y el flotante `c` será el flotante 30.0. Es decir C++ usa a los espacios en blancos como separadores y convierte al string al tipo de dato de la variable donde se extrae.

```cpp
#include <iostream>
#include <string>
using namespace std;

int main()
{
    string abc;
    getline(cin, abc);
    return 0;
}
```

```python
a, b, c = input().split()
b = int(b)
c = float(c)
```

Entonces ¿cómo podemos asignar la entrada a tres variables distintas en Python?, el método split de un string divide al string en una lista de strings según el delimitador que especifiquemos, si no especificamos uno utilizará los espacios en blanco. Como sabemos el número de variables en la lista podemos usar esta sintaxis para desempacar la lista. Los valores de la lista siguen siendo strings, y por eso tendremos que convertirlos a enteros o flotantes según deseemos. ¿Y cómo podemos leer la línea completa en C++? Para eso utilizamos la función global `std::getline` del header `string`. `getline` recibe un objecto del mismo tipo de `cin`, o sea podemos pasarle `cin`, y un string donde almacenar lo leído.

## Salida

```cpp
#include <iostream>
#include <string>
using namespace std;

int main()
{
    cout << 10 << " " << 20 << " " << 30 << endl;
    return 0;
}
```

```python
print(10, end=' ')
print(20, end=' ')
print(30)
```

>10 20 30

Para imprimir a `stdout` en Python 3 usamos la función `print()`. La función `print()` recibe una variable, la convierte a un string y la imprime seguida de un salto de línea.

En C++ se utiliza otro objeto global llamado `std::cout` que se encuentra en el header `iostream`. Este objeto define al operador `<<` (que en este contexto significa _introducir_) y necesita de la variable que se va a imprimir. A diferencia de Python, `std::cout` no imprime un salto de línea y tendremos que hacerlo manualmente. 

Consideren el siguiente ejemplo. La salida requerida es `10 20 30\n`. En el caso de Python la función `print` recibe un parámetro opcional llamado `end` que es un string con el cual termina la impresión, para imprimir un espacio al final tenemos que pasarle `end=' '`, o sea, un string con un solo espacio.
En el caso de C++ para imprimir el salto de línea deberemos imprimir manualmente el carácter `'\n'`, el string `"\n"`, o podemos usar otro objeto global llamado `std::endl`.
