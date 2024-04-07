//
//  ProfileGridView.swift
//  TickTocSwiftUi
//
//  Created by Mithilesh Singh on 06/04/24.
//

import SwiftUI

struct ProfileGridView: View {
    private let item = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    private let width = (UIScreen.main.bounds.width/3) - 2
    var body: some View {
        LazyVGrid(columns:item, spacing: 1){
            ForEach(0 ..< 24){ post in
                Rectangle()
                    .frame(width: width, height: 160)
            }
        }
    }
}

#Preview {
    ProfileGridView()
}
