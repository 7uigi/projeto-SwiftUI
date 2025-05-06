import SwiftUI


struct TabBar: View {
    var color: Color = Color("Tab")
    var colorItems: Color = Color("UnusedItems")
    init(){
        // cor para TabBar
        UITabBar.appearance().backgroundColor = UIColor(color)
        UITabBar.appearance().barTintColor = UIColor(color)
        UITabBar.appearance().unselectedItemTintColor = UIColor(colorItems)
        
    }
    var body: some View {
        // Views da TabBar
        TabView{
            
            View1()
                .tabItem{
                    Label("Recentes", systemImage: "clock")
                    
                }
            View2()
                .tabItem{
                    Label("Meus jogos", systemImage: "folder.fill.badge.person.crop")
                }
            View3()
                .tabItem{
                    Label("Categorias", systemImage: "folder.fill")
                }
            
            
        }
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
