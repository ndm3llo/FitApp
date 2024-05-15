//
//  Dropdown.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/15/24.
//

import SwiftUI
struct DropdownView: View {
    let title: String
    let prompt: String
    let options: [String]
    
    @State private var isExpanded = false
    
    @Binding var select: String?
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.footnote)
                .foregroundStyle(.gray)
                .opacity(0.8)
            VStack {
                HStack {
                    Text(select ?? prompt)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .rotationEffect(.degrees(isExpanded ? 180 : 0))
                }
                .frame(height: 40)
                .background(scheme == .dark ? .black : .white)
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) { isExpanded.toggle() }
                }
                if isExpanded {
                    VStack {
                        ForEach(options, id: \.self) {option in
                            HStack {
                                Text(option)
                                    .foregroundStyle(select == option ? Color.primary : .gray)
                                
                                Spacer()
                                
                                if select == option {
                                    Image(systemName: "checkmark")
                                        .font(.subheadline)
                                }
                            }
                            .frame(height: 40)
                            .padding(.horizontal)
                            .onTapGesture {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)){
                                    select = option
                                    isExpanded.toggle()
                                }
                            }
                        }
                    }
                    .transition(.move(edge: .bottom))
                }
            }
            .background(scheme == .dark ? .black : .white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .primary.opacity(0.8), radius: 4)
            .frame(width: 140)
        }
    }
}
struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView(title: "Days per Week", prompt: "Select", options: [
        "Two",
        "Three",
        "Four",
        "Five",
        "Six"
        ], select: .constant("Six"))
    }
}
