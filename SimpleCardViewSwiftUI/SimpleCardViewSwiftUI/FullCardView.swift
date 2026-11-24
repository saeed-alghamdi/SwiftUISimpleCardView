//
//  FullCardView.swift
//  SimpleCardViewSwiftUI
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

struct FullCardView: View {
    
    @Binding var image: String
    @Binding var title: String
    @Binding var section: String
    @Binding var color: Color
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss.callAsFunction()
        } label: {
            
            VStack(alignment: .leading, spacing: 4.0) {
                Spacer()
                Image(image).resizable().aspectRatio(contentMode: .fit).cornerRadius(12)
                Text(title).fontWeight(.bold)
                
                Text("\(section) Sections").font(.footnote)
                Spacer()
            }.foregroundColor(.white).padding().background(color).shadow(radius: 10).ignoresSafeArea()
        }
    }
}

struct FullCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullCardView(image: .constant("1"), title: .constant("Harmful"), section: .constant("52"), color: .constant(.cyan)).previewDevice("iPhone 7")
    }
}
