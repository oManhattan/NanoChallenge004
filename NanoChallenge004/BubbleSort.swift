//
//  BubbleSort.swift
//  NanoChallenge004
//
//  Created by Matheus Cavalcanti de Arruda on 25/05/22.
//

import Foundation

enum SortOrder {
    case crescente
    case decrescente
}

class BubbleSort {
    
    func sort(array: [Int], order: SortOrder) {
        
        let consoleIO: ConsoleIO = .init()
        
        var arr = array
        
        consoleIO.consoleWrite("\n", as: .normal)
        for i in 1...arr.count {
            
            if i > 9 {
                consoleIO.consoleWrite("\t==============\n\t \(i)ª iteração\n\t==============\n", as: .normal)
            } else {
                consoleIO.consoleWrite("\t=============\n\t \(i)ª iteração\n\t=============\n", as: .normal)
            }
            
            var didSwap = false
            
            for j in 0..<(arr.count - 1) {
                
                selectedIndex(index: j, for: arr)
                
                switch order {
                case .crescente:
                    consoleIO.consoleWrite("\(arr[j]) é maior que \(arr[j + 1])?", as: .written)
                    if arr[j] > arr[j + 1] {
                        
                        consoleIO.consoleWrite("➤ Sim, troca.", as: .written)
                        
                        let temp = arr[j]
                        arr[j] = arr[j + 1]
                        arr[j + 1] = temp
                        
                        didSwap = true
                        continue
                    }
                case .decrescente:
                    consoleIO.consoleWrite("\(arr[j]) é menor que \(arr[j + 1])?", as: .written)
                    if arr[j] < arr[j + 1] {
                        
                        consoleIO.consoleWrite("➤ Sim, troca.", as: .written)
                        
                        let temp = arr[j]
                        arr[j] = arr[j + 1]
                        arr[j + 1] = temp
                        
                        didSwap = true
                        continue
                    }
                }
                
                consoleIO.consoleWrite("➤ Não, mantém.", as: .written)
            }
            
            consoleIO.consoleWrite("\n", as: .normal)
            
            if !didSwap { break }
        }
        
        consoleIO.consoleWrite("O Array ordenado ficou: \(arr)", as: .written)
    }
    
    private func selectedIndex(index: Int, for array: [Int]) {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n[", as: .normal)
        for i in 0..<array.count {
            if i == index {
                console.consoleWrite("➤ \(array[i]), ", as: .normal)
                continue
            }
            
            if i == (array.count - 1) {
                console.consoleWrite("\(array[i])", as: .normal)
                continue
            }
            
            console.consoleWrite("\(array[i]), ", as: .normal)
        }
        
        console.consoleWrite("]\n", as: .normal)
    }
}
