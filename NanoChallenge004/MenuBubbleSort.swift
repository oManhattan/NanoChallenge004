//
//  MenuBubbleSort.swift
//  NanoChallenge004
//
//  Created by Matheus Cavalcanti de Arruda on 26/05/22.
//

import Foundation

class MenuBubbleSort {
    
    func openMenu() {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n\tMENU BUBBLE SORT\n[1] - Escolher o tamanho do vetor (valores são gerados aleatoriamente)\n[2] - Voltar para o menu principal\n", as: .normal)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let opcao = console.getIntegerInput()
            
            switch opcao {
            case 1:
                condicao = false
                menuBubble()
            case 2:
                condicao = false
                console.consoleWrite("\n", as: .normal)
                let menuPrincipal: MenuPrincipal = .init()
                menuPrincipal.openMenu()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    func menuBubble() {
        
        let console: ConsoleIO = .init()
        var array: [Int] = .init()
        var shouldQuitLoop = false
        
        while !shouldQuitLoop {
            console.consoleWrite("\nTamanho do vetor: ", as: .normal)
            let size = console.getIntegerInput()
            
            switch size {
            case 5...15:
                array = generateRandomArray(size: size)
                shouldQuitLoop = true
            default:
                console.consoleWrite("Opção inválida. O tamanho do vetor deve ser no mínimo 5 e máximo 15.", as: .error)
            }
        }
        
        console.consoleWrite("\nArray ficou: \(array)\n", as: .normal)
        
        console.consoleWrite("\n[1] - Ordenar de forma crecsente\t[2] - ordenar de forma descrescente\n", as: .normal)
        
        let bubble: BubbleSort = .init()
        shouldQuitLoop = false
        
        while !shouldQuitLoop {
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getIntegerInput()
            
            switch input {
            case 1:
                shouldQuitLoop = true
                bubble.sort(array: array, order: .crescente)
                openMenu()
            case 2:
                shouldQuitLoop = true
                bubble.sort(array: array, order: .decrescente)
                openMenu()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
            
        }
    }
    
    private func generateRandomArray(size: Int) -> [Int] {
        
        var array: [Int] = .init()
        
        for _ in 0..<size {
            array.append(Int.random(in: 1...100))
        }
        
        return array
    }
    
}
