---
weight: 20
title: Problems
---

# Problemas

Vamos a resolver nuestro primer problema, el problema 4A de Codeforces, [Watermelon](http://codeforces.com/problemset/problem/4/A).

Los problemas tienen 4 partes: enunciado, entrada, salida, y ejemplos.

- El **enunciado** es el texto donde describen el problema. Generalmente tiene una historia introductoria, y seguido la definición, probablemente implícita, del problema en sí.
- La **entrada** es la descripción de cómo se presentarán los datos en el archivo de entrada (_stdin_). También suele contener las restricciones de las variables de entrada.
- La **salida** es la descripción de cómo se debe imprimir la respuesta del problema al archivo de salida (_stdout_).
- Los **ejemplos** son casos de prueba dados por el _problem setter_ para entender mejor el problema.

Los problemas también suelen tener el tiempo límite y el límite de memoria para resolver el problema, es decir, nuestro programa no puede demorarse más de ese tiempo ni usar más memoria de la indicada.

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

Lee el problema [Watermelon](http://codeforces.com/problemset/problem/4/A) y trata de resolverlo en tu lenguaje favorito. La solución debería verse como el código de la derecha. Una vez hayas terminado tu código envíalo al juez para que lo pruebe (tienes que registrarte primero).

El juez te dirá si tu código está bien (_Accepted_) o no. Listaré algunos de los problemas comunes por los que tu programa podría fallar:

- No imprimas nada más que la respuesta. Si estás imprimiendo algo como "Ingrese el valor w:", o "La respuesta es:" el juez lo tomará como una solución errónea.
- Las mayúsculas son diferentes a las minúsculas. Revisa la descripción del problema y observa cuál es el formato exacto en que debes imprimir la respuesta.
- Si estás imprimiendo en el formato correcto y el código sigue mal debe haber un error en la lógica del programa. Vuelve a leer el problema y revisa si tu código está realmente haciendo lo que pide.
- Prueba casos de prueba extremos, es decir muy pequeños y muy grandes, a veces los errores se suelen esconder ahí.

¡Enhorabuena! Ya has debido resolver tu primer problema. Si quieres resolver más [esta es una lista de los problemas en orden de dificultad](http://codeforces.com/problemset?order=BY_SOLVED_DESC).

## Respuestas del juez

Estas son unas de las respuestas que el juez les puede dar sobre su solución:

- **Accepted (AC)**. Tu programa es correcto y está dentro del límite de tiempo y memoria. Felicidades.
- **Presentation Error (PE)**. Tu programa imprimió la respuesta correcta pero en un formato equivocado. Revisa espacios en blanco y saltos de línea.
- **Wrong Answer (WA)**. Tu programa se ejecutó correctamente, pero la solución es incorrecta. Revisa tu código y el problema nuevamente.
- **Compilation Error (CE)**. Tu programa no pudo ser compilado. Generalmente también te dicen el error de compilación. Las advertencias no causan efecto alguno.
- **Runtime Error (RE)**. Tu programa _crasheó_. Normalmente esto pasa cuando se lanza una excepción y no la atrapas. Revisa que no estés accediendo a memoria que no te pertenece o errores de división entre cero.
- **Time Limit Exceeded (TLE)**. Tu programa se demoró mucho y el juez ya no pudo esperarlo. Esto significa que tienes que optimizar tu código o tu algoritmo.
- **Memory Limit Exceeded (MLE)**. Tu programa intentó alojar más memoria de la permitida.
- **Output Limit Exceeded (OLE)**. Tu programa está imprimiendo demasiado. La causa podría ser un bucle infinito al momento de imprimir el resultado.
- **Restricted Function (RF)**. Tu programa quiso acceder a funcionalidad restringida, como funciones del sistema operativo.
- **Submission Error (SE)**. Hubo algún problema al momento de subir el programa. Las causas pueden ser que te faltó seleccionar el problema o poner tu id de usuario o algún otro campo.
