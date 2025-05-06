//
//  ToolBar.swift
//  GameHunt
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct ToolBar: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
            }
            .toolbar {
                
                Button{
                    Text("Save")
                }label: {
                    Image(systemName: "magnifyingglass")
                }
                Button{
                    Text("Save")
                }label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
    }
}

struct ToolBar_Previews: PreviewProvider {
    static var previews: some View {
        ToolBar()
    }
}
