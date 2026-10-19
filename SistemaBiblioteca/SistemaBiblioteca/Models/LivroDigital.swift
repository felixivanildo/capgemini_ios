//
//  LivroDigital.swift
//  SistemaBiblioteca
//
//  Created by Filho, Ivanildo Felix da Silva on 19/10/26.
//

import Foundation

class LivroDigital: Livro {
    private(set) var tamanhoEmMb: Double
    
    init(
        id: Int,
        titulo: String,
        autor: String,
        anoPublicacao: Int,
        tamanhoEmMb: Double
    ){
        
        self.tamanhoEmMb = tamanhoEmMb
        
        super.init(id: id, titulo: titulo, autor: autor, anoPublicacao: anoPublicacao)
    }
}
