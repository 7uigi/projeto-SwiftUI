import SwiftUI

struct Collection: View {
    var tam: Int
    // define 3 colunas para labels
    let columns = [
        GridItem(),
        GridItem(),
        GridItem(),
    ]
    // criar os jogos
    var game: [Game] = [
        Game(img: "TempleRun", txt: "Temple Run", dates: "13:10", sizes: ""),
        Game(img: "Mine", txt: "Minecraft", dates: "Ontem", sizes: ""),
        Game(img: "ClashRoyale", txt: "Clash Royale", dates: "Quarta", sizes: ""),
        Game(img: "Dr", txt: "Dr. Driving", dates: "Semana passada", sizes: ""),
        Game(img: "BlockBlast", txt: "Block Blast", dates: "Mês passado", sizes: ""),
        Game(img: "Subway", txt: "Subway Surfers", dates: "Ano passado", sizes: "")
    ]

    @State var isShowingSheet = true
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    // cria a quantidade de colunas
                    LazyVGrid(columns: columns) {
                        // insere os jogos nas colunas
                        ForEach(0..<tam, id: \.self) { i in
                            VStack{
                                Image(game[i].img)
                                
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .padding(5.0)
                                Text(game[i].txt).font(.system(size: 16))
                                Text(game[i].dates).font(.system(size: 12))
                            }
                        }
                    }
                    
                }
                .background(Color("Tab"))
        
            }
            // toolbar
            .toolbar {
                
                Button{
                }label: {
                    Image(systemName: "magnifyingglass")
                }
                Button{
                }label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
            .toolbarBackground(Color("Tab"), for: .navigationBar)
        }
    }
    
}



struct Collection_Previews: PreviewProvider {
    static var previews: some View {
        Collection(tam: 4)
    }
}
