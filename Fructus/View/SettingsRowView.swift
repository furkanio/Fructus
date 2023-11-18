//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Furkan Yildiz on 18.11.2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        HStack{
            Text(name).foregroundColor(Color.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            }else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }  else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }    }
}

// MARK: - PREVIEW

#Preview {
    SettingsRowView(name: "Developer", content: "Fukan")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
