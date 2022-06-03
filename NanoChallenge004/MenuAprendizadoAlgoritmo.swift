//
//  MenuAprendizado1.swift
//  NanoChallenge004
//
//  Created by Matheus Cavalcanti de Arruda on 26/05/22.
//

import Foundation

class MenuAprendizadoAlgoritmo {
    
    // MARK: Menu Aprendizado
    
    func openMenu() {
        
        let console: ConsoleIO = .init()
        var condicao = true
        
        console.consoleWrite("\n➤ Olá, tudo bem?", as: .written)
        console.consoleWrite("➤ O nosso objetivo é aprender a fazer um algoritmo de ordenação chamado Bubble Sort, com ele é possível ordenar uma sequência de valores de forma crescente ou decrescente. Mas, antes de chegarmos em nosso objetivo é necessário entender alguns conceitos sobre programação.", as: .written)
        
        while condicao {
            
            console.consoleWrite("\n➤ Você está pronto?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ Perfeito!", as: .written)
                condicao = false
                algoritmo()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    private func aguardar() {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ ... Okay. Dê uma respirada antes de continuarmos.", as: .written)
        
        for i in 1...10 {
            sleep(1)
            console.consoleWrite("\(i) ", as: .normal)
        }
        console.consoleWrite("\n", as: .normal)
    }
    
    // MARK: Explicação sobre algoritmos
    
    private func algoritmo() {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ Vamos começar entendendo o que são algoritmos.", as: .written)
        console.consoleWrite("\n➤ Por mais incrível que pareça os computadores não pensam sozinhos 😱! Tudo que eles fazem são seguir conjuntos de regras e procedimentos lógicos bem definidos em etapas finitas (possuem começo, meio e fim).", as: .written)
        console.consoleWrite("\n➤ Podemos imaginar que uma receita funciona de forma semelhante a um algoritmo, já que na parte de \"modo de preparo\" existe uma sequência lógica que devemos seguir.", as: .written)
        console.consoleWrite("\n➤ Aqui está um passo a passo de como fazer um ovo cozido:", as: .written)
        console.consoleWrite("\n➤ 1 - Leve uma panela pequena com água ao fogo médio. Quando ferver, com cuidado e o  auxílio de uma colher, mergulhe o ovo e abaixe o fogo (se você colocar o ovo com cuidado, a casca não trinca).  Se preferir, com uma agulha faça um furinho na base do ovo e adicione caldo de limão à água (ele ajuda a manter a casca do ovo sem rachaduras). Mas basta colocar o ovo com delicadeza que a casca fica inteira.", as: .normal)
        console.consoleWrite("\n➤ 2 - Conte os minutos. Para gema cozida, mas sem passar do ponto, 12 minutos.  Para a gema cremosa, 7 minutos. Para o ovo mollet (clara cozida firme e gema mais líquida), 6 minutos. Para o ovo quente (clara cozida macia e gema bem mole), 4 minutos.", as: .normal)
        console.consoleWrite("\n➤ 3 - Com uma colher, tire o ovo da panela e mergulhe numa tigela com água fria filtrada até ele amornar. Para descascar, role delicadamente o ovo sobre a tábua e vá puxando os pedacinhos de casca. Passe novamente o ovo na tigela com água para descartar qualquer casquinha que tenha sobrado.", as: .normal)
        console.consoleWrite("\n\n➤ Esse é um bom exemplo, já que informa o passo a passo de forma correta e está bem definido. Mas, para um computador seria um pouco mais detalhado:", as: .written)
        console.consoleWrite("\n➤ Pegue uma panela pequena\n➤ Encha a panela com água até duas alturas do ovo\n➤ Coloque a panela no fogão\n➤ Ascenda o fogão com temperatura de 100ºC\n➤ Se a água estiver fervendo, coloque o ovo na panela\n➤ Abaixe a temperatura do fogão para 80ºC\n➤ ...\n", as: .normal)
        console.consoleWrite("\n➤ Com isso já é possível ter uma noção básica do que é um algoritmo. Agora vamos começar a falar sobre variáveis.", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Você está pronto?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ Perfeito!", as: .written)
                condicao = false
                variaves()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    // MARK: Explicação sobre variáveis
    
    private func variaves() {
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ Na programação, uma variável é um objeto (uma posição, frequentemente localizada na memória) capaz de reter e representar um valor ou expressão. Enquanto as variáveis só \"existem\" em tempo de execução, elas são associadas a \"nomes\", chamados identificadores, durante o tempo de desenvolvimento.", as: .written)
        console.consoleWrite("\n➤ É possível separar variáveis por seus tipos. Em Swift os tipos são:", as: .written)
        console.consoleWrite("\n➤ Character (caracter)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var letra: Character = \"A\"", as: .written)
        console.consoleWrite("\n➤ String (conjunto de caracteres)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var palavra: String = \"Manhattan The Great\"", as: .written)
        console.consoleWrite("\n➤ Int (números inteiros)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var numero: Int = 15", as: .written)
        console.consoleWrite("\n➤ Float (números com casas decimais)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var numeroDecimal: Character = 15.5", as: .written)
        console.consoleWrite("\n➤ Double (Da mesma forma que o Float é uma variável para números decimais, porém é mais precisa)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var numeroMaisQueDecimal: Double = 3.14159265359", as: .written)
        console.consoleWrite("\n➤ Bool (valores booleanos, true ou false)", as: .written)
        console.consoleWrite("\t➤ Exemplo: var verdade: Bool = true", as: .written)
        
        console.consoleWrite("\n➤ Para fazer o nosso algoritmo de ordenação nós iremos usar variáveis do tipo inteiro (Int). Mas, para fazer uma ordenação é necessário possuirmos mais de uma variável e podemos fazer isso usando vetores.", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Vamos falar sobre vetores?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ (ﾉ◕ヮ◕)ﾉ", as: .written)
                condicao = false
                vetores()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    // MARK: Explicação vetores
    
    private func vetores() {
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ Um vetor é um contêiner genérico de propósito geral para armazenar uma coleção de elementos e é usado comumente em todos os tipos de programas Swift. Você pode criar uma matriz usando um literal de matriz, que é uma lista de valores separados por vírgulas entre colchetes. Um exemplo de Array com números inteiros ([Int]):", as: .written)
        console.consoleWrite("\t➤ var vetor: [Int] = [40, 62, 85, 24, 8, 70, 84, 73, 27, 94]", as: .written)
        console.consoleWrite("\n➤ Cada variável que está dentro do vetor possui uma posição, ou como é chamado na programação \"index\". O número de cada index é dado pelo tamanho do vetor menos um (n - 1), já que a contagem começa no 0.", as: .written)
        console.consoleWrite("\n➤ Para acessar o valor em uma certa posição de um vetor é utilizado o número do index entre chaves, como no exemplo:", as: .written)
        console.consoleWrite("\t➤ let numero = vetor[2]", as: .written)
        console.consoleWrite("\n➤ No caso acima o valor que a variável 'numero' receberia seria o 85 do vetor criado anteriormente.", as: .written)
        console.consoleWrite("\n➤ Agora que já sabemos que podemos armazenar muitas variáveis em um vetor precisamos saber como percorrê-lo valor por valor.", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Está pronto para os Laços de Repetição?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ Aí sim!", as: .written)
                condicao = false
                loops()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    // MARK: Explicação loops
    
    private func loops() {
        
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ Laços de repetição, também conhecidos como laços de iteração ou simplesmente loops, são comandos que permitem iteração de código, ou seja, que comandos presentes no bloco sejam repetidos diversas vezes. Através de laços de repetição é possível criar programas que percorram vetores, analisando individualmente cada elemento, e até mesmo criar trechos de código que sejam repetidos até que certa condição estabelecida seja cumprida.", as: .written)
        
        console.consoleWrite("\n➤ Em Swift os três principais laços de iteração são: for-in, while, repeat-while", as: .written)
        
        console.consoleWrite("\n➤ O laço 'for-in' é usado para executar um bloco de códigos por n quantidade de vezes, geralmente utilizado para iterar vetores. ", as: .written)
        console.consoleWrite("\n➤ Utilizando como exemplo o vetor [40, 62, 85, 24, 8] iremos iterar (passar de valor em valor do vetor) utilizando o laço de receptição 'for-in", as: .written)
        console.consoleWrite("\n\tfor numero in vetor {\n\t\tprint(numero)\n\t}", as: .written)
        console.consoleWrite("\n➤ O que sairá no console será:\n\n40\n62\n85\n24\n8", as: .written)
        console.consoleWrite("\n➤ Também é possível fazer uma iteração usando 'Range' junto com o 'for-in. Exemplo:", as: .written)
        console.consoleWrite("\n\t for i in 0...10 {\n\t\tprint(i)\n\t}", as: .written)
        console.consoleWrite("\n➤ O que sairá no console será:\n\n0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10", as: .written)
        console.consoleWrite("\n➤ Os laços de repetição 'while' e 'repeat-while' funcionam quase da mesma forma. A lógica é que eles ficam repetindo o bloco de código até que alguma condição se torne verdadeira, a única diferença é que no laço 'while' a verificação é feita toda vez antes de executar o bloco de código e com o laço 'repeat-while' a verificação é toda vez depois que o bloco de código executar. O loop acontece até que a condição se torne falsa, exemplo:", as: .written)
        console.consoleWrite("\n\tvar numero = 0\n\n\twhile numero < 5 {\n\t\tprint(numero)\n\t\tnumero = numero + 1\n\t}", as: .written)
        console.consoleWrite("\n➤ No exemplo acima o laço se repetirá até o momento que a variável 'numero' for maior ou igual a 5. O que sairá no console será:\n\n0\n1\n2\n3\n4", as: .written)
        console.consoleWrite("\n➤ Junto com o exemplo dos laços 'while' e 'repear-while' veio um novo conceito que é chamado de Condicionais.", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Vamos falar sobre Condicionais?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ Aí sim!", as: .written)
                condicao = false
                condicionais()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    //MARK: Explicação condicionais
    
    private func condicionais() {
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ As estruturas condicionais permitem que um programa execute diferentes comandos de acordo com as condições estabelecidas.", as: .written)
        console.consoleWrite("\n➤ No Swift as estruturas condicionais mais utilizadas são 'if', 'else if', 'else', e 'switch-case'", as: .written)
        console.consoleWrite("\n➤ Junto com as estruturas condicionais são utilizadas os operadores condicionais, que são:\n\t➤ Igual: ==\n\t➤ Diferente: !=\n\t➤ Menor que: <\n\t➤ Maior que: >\n\t➤ Menor igual que: <=\n\t➤ Maior igual que: >=", as: .written)
        console.consoleWrite("\n➤ Um exemplo com a estrutura 'if', 'else if', 'else':", as: .written)
        console.consoleWrite("\n\tvar numero = 5\n\n\tif numero < 5 {\n\t\tprint(\"Número menor que 5\")\n\t} else if numero == 5 {\n\t\tprint(\"Número é igual a 5\")\n\t} else {\n\t\tprint(\"Número maior que 5\")\n\t}", as: .written)
        console.consoleWrite("\n➤ O que sairá no console será:\n\nNúmero é igual a 5", as: .written)
        console.consoleWrite("\n➤ Com as explicações dadas até agora nós conseguimos construir o algoritmo Bubble Sort.", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Preparado para contruirmos o nosso algoritmo de ornedação?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                console.consoleWrite("\n➤ Aí sim!", as: .written)
                condicao = false
                aboutBubble()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
    
    //MARK: Explicação sobre Bubble Sort
    
    private func aboutBubble() {
        let console: ConsoleIO = .init()
        
        console.consoleWrite("\n➤ O bubble sort, ou ordenação por flutuação (literalmente \"por bolha\"), é um algoritmo de ordenação dos mais simples. A ideia é percorrer o vector diversas vezes, e a cada passagem fazer flutuar para o topo o maior elemento da sequência. Essa movimentação lembra a forma como as bolhas em um tanque de água procuram seu próprio nível, e disso vem o nome do algoritmo.", as: .written)
        console.consoleWrite("\n➤ No melhor caso, o algoritmo executa n operações relevantes, onde n representa o número de elementos do vector. No pior caso, são feitas n^2 operações. A complexidade desse algoritmo é de ordem quadrática. Por isso, ele não é recomendado para programas que precisem de velocidade e operem com quantidade elevada de dados.", as: .written)
        console.consoleWrite("\n➤ Este algoritmo percorre a lista de itens ordenáveis do início ao fim, verificando a ordem dos elementos dois a dois, e trocando-os de lugar se necessário. Percorre-se a lista até que nenhum elemento tenha sido trocado de lugar na passagem anterior.", as: .written)
        console.consoleWrite("\n➤ A implementação do algoritmo Bubble Sort fica assim:", as: .written)
        console.consoleWrite("\n\tfor _ in vetor {\n\n\t\tvar naoHouveTroca = true\n\n\t\tfor j in 0...(vetor.count - 1) {\n\n\t\t\tif vetor[j] > vetor[j + 1] {\n\t\t\t\tvar aux = vetor[j]\n\t\t\t\tvetor[j] = vetor[j + 1]\n\t\t\t\tvetor[j + 1] = aux\n\n\t\t\t\tnaoHouveTroca = false\n\t\t\t}\n\t\t}\n\t\tif naoHouveTroca {\n\t\t\tbreak\n\t\t}\n\t}", as: .written)
        
        var condicao = true
        while condicao {
            
            console.consoleWrite("\n➤ Vamos dar uma olhada no código funcionando na prática?", as: .written)
            console.consoleWrite("\n\t[Sim]\t[Não]", as: .written)
            
            console.consoleWrite("\nEscolha: ", as: .normal)
            let input = console.getStringInput()
            
            switch input.lowercased() {
            case "sim", "s":
                condicao = false
                let menuBubble: MenuBubbleSort = .init()
                menuBubble.openMenu()
            case "nao", "n":
                aguardar()
            default:
                console.consoleWrite("Opção inválida.", as: .error)
            }
        }
    }
}
