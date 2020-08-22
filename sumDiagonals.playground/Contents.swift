import UIKit

class Diagonal {
    var matrix:[[Int]] = [
        [1,2,3,4,5],
        [2,3,4,6,6],
        [3,4,5,6,7],
        [4,5,6,10,8],
        [5,6,7,8,9]
    ]
    var mainDiagonalSum = 0
    var invertedDiagonalSum = 0
    var isSquare = true
    
    func calculediagonal() {
        for i in 0..<matrix.count {
            if matrix[i].count == matrix.count {
                mainDiagonalSum += matrix[i][i]
                invertedDiagonalSum += matrix[i][matrix.count - 1 - i]
            }else {
                isSquare = false
                break
            }
        }
        if isSquare {
            print(mainDiagonalSum>invertedDiagonalSum ? "El contador de izquierda-derecha:\(mainDiagonalSum) es mayor que el contador de derecha-izquierda:\(invertedDiagonalSum)": mainDiagonalSum==invertedDiagonalSum ? "los contadores son iguales" : "El contador de derecha-izquierda:\(invertedDiagonalSum) es mayor que el contador izquierda-derecha:\(mainDiagonalSum)")
        }else {
            print("La matriz no es cuadrada")
        }
    }
    
    func testingResults(_ mainDiagonal: Int,_ invertedDiagonal: Int) -> String {
//        let mainDiagonal = 5+3+5
//        let invertedDiagonal = 3+3+3
        if self.mainDiagonalSum == mainDiagonal && self.invertedDiagonalSum == invertedDiagonal {
            return "Ok"
        }else {
            return "faild"
        }
    }
}

let diagonal = Diagonal()
//De estamanera se puede ingresar la matriz que se deseé
diagonal.matrix = [
    [5,2,3],
    [2,3,4],
    [3,4,5]
]
diagonal.calculediagonal()
//Para poder probar si los resultados son correctos se puede utilizar esta función e ingresar el resultado esperado de manera manual
print(diagonal.testingResults(5+3+5, 3+3+3))
