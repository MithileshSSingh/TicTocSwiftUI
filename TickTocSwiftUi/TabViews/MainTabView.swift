//
//  MainTabView.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill":"house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill:.none)
                        
                        Text("Home")
                    }
                }
                .onAppear{ selectedTab = 0 }
                .tag(0)
            
            FriendsList()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill":"person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill:.none)
                        Text("Friends")
                    }
                }
                .onAppear{ selectedTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    VStack{
                        Image(systemName: "plus")
                    }
                }
                .onAppear{ selectedTab = 2 }
                .tag(2)
            
            NotificationList()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Notification")
                    }
                }
                .onAppear{ selectedTab = 3 }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill":"person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill:.none)
                        Text("Profile")
                    }
                }
                .onAppear{ selectedTab = 4 }
                .tag(4)
            
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
