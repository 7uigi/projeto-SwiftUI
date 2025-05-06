// Tela Categorias

import SwiftUI

struct View3: View{
    @State private var searchText = ""
    // cria as categorias
    var local: [Items] =
    [
        Items(symbol: "cloud", cor: "purple", txt: "Jogos no iCloud"),
        Items(symbol: "iphone", cor: "purple", txt: "No meu iPhone"),
        Items(symbol: "creditcard", cor: "purple", txt: "Assinaturas")
    ]
    var recor: [Items] =
    [
        Items(symbol: "photo", cor: "purple", txt: "Capturas de Tela")
    ]
    var categorias: [Items] =
    [
        Items(symbol: "arcade.stick", cor: "Orange", txt: "Arcade"),
        Items(symbol: "arcade.stick", cor: "Red", txt: "Ação"),
        Items(symbol: "arcade.stick", cor: "Cyan", txt: "Aventura"),
        Items(symbol: "arcade.stick", cor: "Yellow", txt: "Cartas"),
        Items(symbol: "arcade.stick", cor: "Forest", txt: "Esporte"),
        Items(symbol: "arcade.stick", cor: "DarkBlue", txt: "Estratégia"),
        Items(symbol: "arcade.stick", cor: "Black", txt: "Jogos de tiro"),
        Items(symbol: "arcade.stick", cor: "Green", txt: "Mundo aberto"),
        Items(symbol: "arcade.stick", cor: "Magenta", txt: "Vários jogadores")
    ]
    var body: some View{
        // define 3 colunas para labels
        let columns = [
            GridItem(),
            GridItem(),
            GridItem(),
        ]
        VStack {
            Header()
            
            NavigationStack {
                // Locais
                ScrollView {
                    LazyVGrid(columns: columns) {
                        Text("Locais")
                        Text("")
                        Image(systemName: "control")
                            .rotationEffect(.degrees(180))
                            .foregroundColor(Color("purple"))
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color("Gray"))
                            .opacity(0.85)
                            .padding()
                            .frame(width: 350, height: 150)
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(local, id: \.self) { _local in
                                Image(systemName: _local.symbol)
                                    .foregroundColor(Color(_local.cor))
                                Text(_local.txt)
                                    .font(.system(size: 16))
                                Image(systemName: _local.arrow)
                                    .rotationEffect(.degrees(90))
                            }
                            
                        }
                    }
                    // Recordações
                    LazyVGrid(columns: columns) {
                        Text("Recordações")
                        Text("")
                        Image(systemName: "control")
                            .rotationEffect(.degrees(180))
                            .foregroundColor(Color("purple"))
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color("Gray"))
                            .opacity(0.85)
                            .padding()
                            .frame(width: 350, height: 80)
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(recor, id: \.self) { _recor in
                                Image(systemName: _recor.symbol)
                                    .foregroundColor(Color(_recor.cor))
                                
                                Text(_recor.txt).font(.system(size: 16))
                                Image(systemName: _recor.arrow).rotationEffect(.degrees(90))
                            }
                        }
                    }
                    //Categorias
                    LazyVGrid(columns: columns) {
                        Text("Categorias")
                        Text("")
                        Image(systemName: "control")
                            .rotationEffect(.degrees(180))
                            .foregroundColor(Color("purple"))
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color("Gray"))
                            .opacity(0.85)
                            .padding()
                            .frame(width: 350, height: 400)
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(categorias, id: \.self) { _cat in
                                Image(systemName: _cat.symbol)
                                    .foregroundColor(Color(_cat.cor))
                                Text(_cat.txt)
                                    .font(.system(size: 16))
                                Image(systemName: _cat.arrow)
                                    .rotationEffect(.degrees(90))
                            }
                        }
                    }
                    
                }
                .background(Color("Tab"))
                
                .searchable(text: $searchText)
                
                //toolbar
                .toolbar {
                    
                    ToolbarItem(placement: .confirmationAction) {
                        Button{
                        }label: {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                }
                .toolbarBackground(Color("Tab"), for: .navigationBar)
            }
        }
        .background(Color("Tab"))
    }
    
}



struct View_3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
