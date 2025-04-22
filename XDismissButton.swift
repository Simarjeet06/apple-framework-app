//
//  XDismissButton.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 22/04/25.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView:Bool
    var body:some View{
        HStack{
            Spacer()
            Button{
                isShowingDetailView=false
            }label:{
                Image(systemName:"xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width:32,height:32)
            }
            .padding()
        }
    }
}
#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
