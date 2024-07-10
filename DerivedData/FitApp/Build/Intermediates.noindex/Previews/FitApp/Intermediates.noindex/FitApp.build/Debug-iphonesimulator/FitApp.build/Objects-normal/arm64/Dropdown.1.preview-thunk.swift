@_private(sourceFile: "Dropdown.swift") import FitApp
import SwiftUI
import SwiftUI

extension DropdownView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/Dropdown.swift", line: 79)
        DropdownView(title: __designTimeString("#10340.[2].[0].property.[0].[0].arg[0].value", fallback: "Days per Week"), prompt: __designTimeString("#10340.[2].[0].property.[0].[0].arg[1].value", fallback: "Select"), options: [
        __designTimeString("#10340.[2].[0].property.[0].[0].arg[2].value.[0]", fallback: "Two"),
        __designTimeString("#10340.[2].[0].property.[0].[0].arg[2].value.[1]", fallback: "Three"),
        __designTimeString("#10340.[2].[0].property.[0].[0].arg[2].value.[2]", fallback: "Four"),
        __designTimeString("#10340.[2].[0].property.[0].[0].arg[2].value.[3]", fallback: "Five"),
        __designTimeString("#10340.[2].[0].property.[0].[0].arg[2].value.[4]", fallback: "Six")
        ], select: .constant(__designTimeString("#10340.[2].[0].property.[0].[0].arg[3].value.arg[0].value", fallback: "Six")))
    
#sourceLocation()
    }
}

extension DropdownView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/Dropdown.swift", line: 21)
        VStack(alignment: .leading) {
            Text(title)
                .font(.footnote)
                .foregroundStyle(.gray)
                .opacity(__designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0.8))
            VStack {
                HStack {
                    Text(select ?? prompt)
                    
                    Spacer()
                    
                    Image(systemName: __designTimeString("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.down"))
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .rotationEffect(.degrees(isExpanded ? __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.arg[0].value.then", fallback: 180) : __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.arg[0].value.else", fallback: 0)))
                }
                .frame(height: __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 40))
                .background(scheme == .dark ? .black : .white)
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation(.spring(response: __designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.3), dampingFraction: __designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[0].value.arg[1].value", fallback: 0.7))) { isExpanded.toggle() }
                }
                if isExpanded {
                    VStack {
                        ForEach(options, id: \.self) {option in
                            HStack {
                                Text(option)
                                    .foregroundStyle(select == option ? Color.primary : .gray)
                                
                                Spacer()
                                
                                if select == option {
                                    Image(systemName: __designTimeString("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[1].[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[2].[0].[0].arg[0].value", fallback: "checkmark"))
                                        .font(.subheadline)
                                }
                            }
                            .frame(height: __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[1].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 40))
                            .padding(.horizontal)
                            .onTapGesture {
                                withAnimation(.spring(response: __designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[1].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.3), dampingFraction: __designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[1].arg[0].value.[1].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value.[0].arg[0].value.arg[1].value", fallback: 0.7))){
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
            .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 10)))
            .shadow(color: .primary.opacity(__designTimeFloat("#10340.[1].[6].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 4))
            .frame(width: __designTimeInteger("#10340.[1].[6].property.[0].[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 140))
        }
    
#sourceLocation()
    }
}

import struct FitApp.DropdownView
import struct FitApp.DropdownView_Previews

