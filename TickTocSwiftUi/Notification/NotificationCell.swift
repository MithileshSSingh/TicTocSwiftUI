//
//  NotificationCell.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color.gray)
            Text("user_name")
                .font(.headline) +
            Text(" kdalkfj dak fdlaflfaj dlkfjlkkliked your post")
                .font(.caption) +
            Text(" 3h ago")
                .font(.caption)
                .fontWeight(.light)
                .foregroundStyle(.gray)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 6)
                .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    NotificationCell()
}
