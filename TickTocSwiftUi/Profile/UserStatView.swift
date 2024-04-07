//
//  UserStatView.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct UserStatView: View {
    let count:Int
    let text:String
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.footnote)
                .fontWeight(.bold)
            Text(text)
                .font(.footnote)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    UserStatView(count: 5, text: "Follower")
}
