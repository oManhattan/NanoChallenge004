//
//  MenuPrincipal.swift
//  NanoChallenge004
//
//  Created by Matheus Cavalcanti de Arruda on 26/05/22.
//

import Foundation

class MenuPrincipal {
    
    func openMenu() {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\t\tMENU\n\n[1] - Começar aprendizado\n[2] - Usar Bubble Sort\n[3] - Sair\n", as: .normal)
        console.consoleWrite("\nEscolha: ", as: .normal)
        
        let opcao = console.getIntegerInput()
        
        switch opcao {
        case 1:
            let menuAlgoritmo: MenuAprendizadoAlgoritmo = .init()
            menuAlgoritmo.openMenu()
        case 2:
            let menuBubble: MenuBubbleSort = .init()
            menuBubble.openMenu()
        case 3:
            console.consoleWrite("\n➤ Até a próxima.\n", as: .normal)
        default:
            console.consoleWrite("Opção inválida.\n", as: .error)
            openMenu()
        }
        
    }
    
}
