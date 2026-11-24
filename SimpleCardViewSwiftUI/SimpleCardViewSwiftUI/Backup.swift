//
//  Backup.swift
//  SimpleCardViewSwiftUI
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

struct Backup: View {
    var body: some View {
        Button {
            // ...
        } label: {
            
            VStack(alignment: .leading, spacing: 4.0) {
                //Spacer()
                Image("5").resizable().aspectRatio(contentMode: .fit).cornerRadius(12)
                Text("SwiftUI for iOS 16").fontWeight(.bold)
                
                Text("30 Sections").font(.footnote)
                Spacer()
            }.foregroundColor(.white).padding().background(Color.blue).cornerRadius(24).shadow(radius: 10)//.ignoresSafeArea()
        }

    }
}

struct Backup_Previews: PreviewProvider {
    static var previews: some View {
        Backup()
    }
}
