//
//  InputHelper.swift
//  SistemaBiblioteca
//
//  Created by Filho, Ivanildo Felix da Silva on 19/10/26.
//

import Foundation

struct InputHelper {
    
    static func lerTexto(
        mensagem: String
    ) -> String {
        print(mensagem, terminator: " ")
        
        return readLine() ?? ""
    }
    
    static func lerInteiro(
        mensagem: String
    ) -> Int {
        while true {
            print(mensagem, terminator: " ")
            
            if let valor = Int(readLine() ?? ""){
                return valor
            }
            
            print("Digite um número válido.")
        }
    }
}
