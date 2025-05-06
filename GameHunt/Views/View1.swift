// Tela Recentes
import SwiftUI

struct  View1: View{
    var body: some View{
        VStack(){
            Header()
            Collection(tam: 3)
        }
        .background(Color("Tab"))
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
