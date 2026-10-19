//
//  Biblioteca.swift
//  SistemaBiblioteca
//
//  Created by Filho, Ivanildo Felix da Silva on 19/10/26.
//

import Foundation

class Biblioteca {
    private var livros: [Livro] = []
    
    func adicionar(_ livro: Livro) -> Bool {
        let existente = livros.contains{$0.id == livro.id}
        
        if existente {
            return false
        }
        
        livros.append(livro)
        return true
    }

    func listarlivros(){
        if livros.isEmpty{
            print("Nenhum livro cadastrado.")
            return
        }
        
        livros.forEach{
            $0.exibirDetalheres()
        }
    }

    func buscarPorId(_ id: Int) -> Livro? {
        return livros.first {
            $0.id == id
        }
    }
    
    func buscarPorTitulo(_ trecho: String) -> [Livro] {
        livros.filter {
            $0.titulo.lowercased().contains(trecho.lowercased())
        }
    }
    
    func atualizaLivro (
        id: Int,
        titulo: String,
        autor: String,
        ano: Int
    ) -> Bool {
        guard let livro = buscarPorId(id)
        else {
            return false
        }
        
        livro.atualizarDados(titulo: titulo, autor: autor, anoPublicacao: ano)
        
        return true
    }
    
    
    func remover(id: Int) -> Bool {
        guard let indice = livros.firstIndex(where: {
            $0.id == id
        })else{
            return false
        }
        
        livros.remove(at: indice)
        
        return true
    }
}
