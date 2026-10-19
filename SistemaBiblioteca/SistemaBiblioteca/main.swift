//
//  main.swift
//  SistemaBiblioteca
//
//  Created by Filho, Ivanildo Felix da Silva on 19/10/26.
//

import Foundation

let biblioteca = Biblioteca()

var executando = true

while executando {
    
    print("""
    __________
    Biblioteca
    ----------
    
    1 - Cadastrar
    2 - Listar
    3 - Buscar por ID
    4 - Buscar por Titulo
    5 - Atualizar Livro
    6 - Remover Livro
    7 - Emprestar 
    8 - Devolver
    0 - Sair
    """)
    
    guard let opcao = readLine()
    else{
            continue
    }
    
    switch opcao{
    case "1":
        let id = InputHelper.lerInteiro(mensagem: "ID:")
        let titulo = InputHelper.lerTexto(mensagem: "Titulo:")
        let autor = InputHelper.lerTexto(mensagem: "Autor:")
        let ano = InputHelper.lerInteiro(mensagem: "Ano:")
        
        let livro = Livro(
            id: id, titulo: titulo, autor: autor, anoPublicacao: ano
        )
        
        if biblioteca.adicionar(livro){
            print("Livro cadastrado.")
        } else {
            print("Já existe um livro com esse id.")
        }
        
    
        
    case "2":
        biblioteca.listarlivros()
        
    case "3":
        
        let id = InputHelper.lerInteiro(mensagem: "Informe o Id:")
        if let livro = biblioteca.buscarPorId(id){
            livro.exibirDetalheres()
        } else {
            print("Livro nao encontrado.")
        }
        
    case "4":
        
        let titulo = InputHelper.lerTexto(mensagem: "Titulo:")
        
        let resultados = biblioteca.buscarPorTitulo(titulo)
        
        if resultados.isEmpty {
            print("Nenhum livro encontrado.")
        } else {
            resultados.forEach {
                $0.exibirDetalheres()
            }
        }
        
    case "5":
        
        let id = InputHelper.lerInteiro(mensagem: "ID do livro:")
        
        let titulo = InputHelper.lerTexto(mensagem: "Titulo:")
        let autor = InputHelper.lerTexto(mensagem: "Autor:")
        let ano = InputHelper.lerInteiro(mensagem: "Ano:")
        
        if biblioteca.atualizaLivro(id: id, titulo: titulo, autor: autor, ano: ano){
            print("Livro atualizado")
        } else{
            print("Livro nao encontrado")
        }
        
    case "6":
        
        let id = InputHelper.lerInteiro(mensagem: "ID do Livro:")
        if biblioteca.remover(id: id){
            print ("Livro removido")
        } else{
            print("Livro nao encontrado")
        }
        
    case "7":
        let id = InputHelper.lerInteiro(mensagem: "ID do livro:")
        
        if let livro = biblioteca.buscarPorId(id){
            livro.emprestar()
        } else {
            print("Livro nao encontrado")
        }
        
    case "8":
        let id = InputHelper.lerInteiro(mensagem: "ID do livro:")
        
        if let livro = biblioteca.buscarPorId(id){
            livro.devolver()
        } else {
            print("Livro nao encontrado")
        }

    case "0":
        executando = false
        
    default:
        print("Opcao inválida")
    }
    
}
