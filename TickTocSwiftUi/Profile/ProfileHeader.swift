//
//  ProfileHeader.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(spacing:20){
            VStack(spacing:8){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .foregroundStyle(Color.gray)
                Text("@mith_sing")
                    .font(.footnote)
                    .fontWeight(.bold)
            }
            HStack(spacing:20){
                UserStatView(count: 5, text: "Followers")
                UserStatView(count: 1, text: "Following")
                UserStatView(count: 10, text: "Likes")
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .frame(width: 360, height: 32)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding()
            }

            Divider()
        }
        
        
    }
}

#Preview {
    ProfileHeader()
}
