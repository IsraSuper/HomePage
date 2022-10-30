//
//  ImagePage.swift
//  HomePage
//
//  Created by Israa Kheder on 01/04/1444 AH.
//

import SwiftUI

struct ImagePage: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                
                Image("backgroundcolor")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
            }
            
        }
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
