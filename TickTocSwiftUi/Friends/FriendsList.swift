//
//  FriendsList.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 20){
                    ForEach(0 ..< 20){user in
                        FriendsCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Friends")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    FriendsList()
}
