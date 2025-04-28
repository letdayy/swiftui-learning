//
//  ContentView.swift
//  Projeto
//
//  Created by leticia.dayane on 28/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mensagem = "Seja bem vindo(a)!"

    var body: some View {
        VStack(spacing: 20) {
            Text(mensagem)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                .padding()

            Image(systemName: "sun.max")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundStyle(.orange)

            Button(action: {
                mensagem = "Hoje será um ótimo dia ☀️"
            }) {
                Text("Nova mensagem")
                    .padding()
                    .background(Color.black)
                    .foregroundStyle(.yellow)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
