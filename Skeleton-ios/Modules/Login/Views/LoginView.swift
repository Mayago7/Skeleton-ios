//
//  LoginView.swift
//  Skeleton-ios
//
//  Created by Bernardo Cervantes Mayagoitia on 06/04/26.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            Text("Skeleton App Login")
                .font(.title)
            VStack {
                TextField("User Name", text: $viewModel.username)
                    .padding([.leading, .trailing], 15)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                SecureField("Password", text: $viewModel.password)
                    .padding([.leading, .trailing], 15)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
            }
            .padding([.top, .bottom], 30)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Button {
                viewModel.LogIn()
            } label: {
                Text("Login")
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .alert("Important Message", isPresented: $viewModel.showErrorAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("There was an error al Login.")
        }
    }
}

#Preview {
    LoginView()
}
