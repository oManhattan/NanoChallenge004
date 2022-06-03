//
//  ConsoleIO.swift
//  NanoChallenge004
//
//  Created by Matheus Cavalcanti de Arruda on 24/05/22.
//

import Foundation

enum PrintOption {
    case normal
    case written
    case error
}

public class ConsoleIO {
    
    func consoleWrite(_ message: String, as type: PrintOption) {
        
        switch type {
        case .normal:
            print(message, terminator: "")
        case .written:
            printAsWritten(message)
        case .error:
            print("➤ Erro: \(message)")
        }
    }
    
    func getIntegerInput() -> Int {
        
        guard let input = readLine(), let num = Int(input) else {
            return 0
        }
        
        return num
    }
    
    func getStringInput() -> String {
        
        guard let input = readLine() else { return "" }
        
        return input
    }
    
    private func printAsWritten(_ text: String) {
        
        let arr = Array.init(text)
        
        for i in arr {
//            usleep(106000)
            print(i, terminator: "")
        }
        print("")
    }
}
