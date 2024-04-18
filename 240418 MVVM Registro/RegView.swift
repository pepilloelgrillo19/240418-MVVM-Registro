//
//  RegView.swift
//  240418 MVVM Registro
//
//  Created by Luis on 18/4/24.
//

import SwiftUI

struct RegView: View {
    
    @StateObject var regViewModel:RegistroViewModel = RegistroViewModel()
    
    @State var passReg:String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Usuario", text: $regViewModel.nombreViewModel)
                    .padding(20)
                    .font(.title2)
                    .background(.green.opacity(0.25))
                    .cornerRadius(25)
                    .padding(.horizontal,50)
                    
                SecureField("Contraseña", text: $regViewModel.paswordViewModel)
                    .padding(20)
                    .font(.title2)
                    .background(.green.opacity(0.25))
                    .cornerRadius(25)
                    .padding(.horizontal,50)
                
                Button(action: {
                    regViewModel.BotRegFunc(nombre: regViewModel.nombreViewModel, password: regViewModel.paswordViewModel)
                })
                {
                    Text("Registrar")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(.green.opacity(0.5))
                        .cornerRadius(25)
                }
            }
        }
    }
}


struct RegView_Previews: PreviewProvider {
    static var previews: some View {
        RegView()
    }
}
