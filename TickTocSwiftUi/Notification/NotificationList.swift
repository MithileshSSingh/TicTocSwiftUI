//
//  NotificationList.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct NotificationList: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:24){
                    ForEach(0 ..< 20 ){ notification in
                        NotificationCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationList()
}
