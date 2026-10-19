//
//  Livro.swift
//  SistemaBiblioteca
//
//  Created by Filho, Ivanildo Felix da Silva on 19/10/26.
//
import Foundation

class Livro: Documento {
    
    let id: Int
    
    private(set) var titulo: String
    private(set) var autor: String
    private(set) var anoPublicacao: Int
    private(set) var isEmprestado: Bool
    
    init(
        id: Int,
        titulo: String,
        autor: String,
        anoPublicacao: Int
    ){
        self.id = id
        self.titulo = titulo
        self.autor = autor
        self.anoPublicacao = anoPublicacao
        self.isEmprestado = false
    }
    
    func emprestar() {
        isEmprestado = true
    }
    
    func devolver() {
        isEmprestado = false
    }
    
    func atualizarDados(
        titulo: String,
        autor: String,
        anoPublicacao: Int
    ){
        self.titulo = titulo
        self.autor = autor
        self.anoPublicacao = anoPublicacao
    }
    
    
    func exibirDetalheres() {
        
        let status = isEmprestado ? "Emprestado" : "Disponível"
        
        print("""
            ID: \(id)
            Titulo: \(titulo)
            Autor: \(autor)
            Ano: \(anoPublicacao)
            Status: \(status)
        """)
    }
}
