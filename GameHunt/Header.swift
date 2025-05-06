import SwiftUI

struct Header: View {
    var body: some View {
        // Ultimo Jogo Aberto
        
        ZStack(){
            Image("SubwaySurfers")
                .resizable()
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("Tab"))
                .opacity(0.875)
                .padding(.top, 50.0)
                .frame(width: 325)
                .ignoresSafeArea()
            
            VStack{
                Text("GameHunt")
                    .font(.system(size: 50))
                    .bold()
                ZStack{
                   RoundedRectangle(cornerRadius: 20)
                        .frame(width: 270, height: 60)
                        .foregroundColor(Color("purple"))
                    Text("Jogar agora")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                        
                }
                Text("Acessar loja")
                    .foregroundColor(Color("purple"))
                    .font(.system(size: 25))
            }
                
        }
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
