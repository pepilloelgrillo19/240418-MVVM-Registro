//
//  RegistroOK.swift
//  240418 MVVM Registro
//
//  Created by Luis on 19/4/24.
//

import SwiftUI

struct RegistroOK: View {
    @EnvironmentObject var regViewModel: RegistroViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Registro Correcto")
        
        Button("Registrar un nuevo usuario"){
            regViewModel.CerrarModalPublica(paraCerrar: regViewModel.isCorrect)
            self.presentationMode.wrappedValue.dismiss()
            
        }
    }
}

struct RegistroOK_Previews: PreviewProvider {
    static var previews: some View {
        RegistroOK().environmentObject()
    }
}
