//
//  FriendsCell.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct FriendsCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundColor(Color(.systemGray))
            
            VStack(alignment:.leading){
                Text("handel")
                    .font(.headline)
                Text("User Name")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    FriendsCell()
}
