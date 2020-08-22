# Diagonals
pequeña prueba para demostrar conocimientos

## Contenido 🧐

_Involuca conocimientos de programación._

### Requerimientos 📋
 * Obtener la sumatoria de la diagonal principal
 * Obtener la sumatoria de la diagonal invertida
 * Comparar las diferentes sumatorias y comparar
 * Imprimir la sumatoria mayor en texto
 * Verificar si la matriz es cuadrada

### segmentos importantes 🔍
_Sumatoria de los items en las diagonales (principal e invertido)_

```
  for i in 0..<matrix.count {
      if matrix[i].count == matrix.count {
          mainDiagonalSum += matrix[i][i]
          invertedDiagonalSum += matrix[i][matrix.count - 1 - i]
      }else {
         isSquare = false
         break
      }
   }
```
_Se coloco una bandera para asegurar que la matriz sea cuadrada como se dijo en los requerimientos_
```
  var isSquare: Bool = true
```
## Autor ✒️

* **Carlos Andrés Ponce Flores** - *Desarrollador iOS* - [PonceDev](https://github.com/Ponce156C)

## Expresiones de Gratitud 🎁

* Invitame una cheve 🍺 y a colaborar contigo 👨🏻‍💻. 

---
⌨️ con ❤️ por [PonceDev](https://github.com/Ponce156C) 😊
