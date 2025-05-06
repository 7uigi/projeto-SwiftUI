// Tela Meus Jogos
import SwiftUI

struct View2: View{
    var body: some View{
        VStack(){
            Header()
            Collection(tam: 6)
        
        }
        .background(Color("Tab"))
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
