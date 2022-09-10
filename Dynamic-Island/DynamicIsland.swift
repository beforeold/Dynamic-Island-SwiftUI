//
//  DynamicIsland.swift
//  Dynamic-Island
//
//  Created by simge on 10.09.2022.
//

import SwiftUI

struct DynamicIsland: View {
    
    @Binding var expanded: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: expanded ? 80:48, height:  expanded ? 80:48)
                    .clipShape(Circle())
                    .padding(8)
                
                VStack {
                    Text("mobile")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                    Text("Simge Atlıhan")
                        .foregroundColor(.white)
                        .font(.system(size:16))
                }
                Spacer()
                Image(systemName: "phone.down.fill")
                    .foregroundColor(.red)
                    .padding(8)
                Image(systemName: "phone.fill")
                    .foregroundColor(.green)
                    .padding(8)
            }
            .frame(maxWidth: .infinity, maxHeight: expanded ? 100:60)
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.6,  blendDuration: 1.0)) {
                    expanded.toggle()
                }
            }
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
            .padding()
        }
    }
}
