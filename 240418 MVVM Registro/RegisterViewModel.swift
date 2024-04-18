//
//  RegisterViewModel.swift
//  240418 MVVM Registro
//
//  Created by Luis on 18/4/24.
//

import SwiftUI

class RegistroViewModel: ObservableObject {
    @Published var nombreViewModel:String = ""
    @Published var paswordViewModel:String = ""
    //Variable para intentar crear un Modal que avise de que se ha registrado el usuario
    @Published var isCorrect:Bool = false
    
    private func RegistrarFunc (nombre:String, password:String){
        var modelo = Model(usuario: nombreViewModel, password: paswordViewModel)
        isCorrect = true
        print(modelo.usuario)
        print(modelo.password)
    }
    
    func BotRegFunc (nombre:String, password:String){
        RegistrarFunc(nombre: nombre, password: password)
    }
    
}
