//
//  UserView.swift
//  ApiTest
//
//  Created by Pedro Delmondes  on 23/05/2024.
//

import SwiftUI

struct UserView: View {
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("**Name**: \(user.name)")
            Text("**Email**: \(user.email)")
            Divider()
            Text("**Company**: \(user.company.name)")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.blue.opacity(0.1), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .padding(.horizontal, 4)
    }
}

#Preview {
    UserView(user: .init(id: 0,
                         name: "Tunds",
                         email: "Tunde@gmail",
                         company: .init(name: "Tundsdev")))
}
