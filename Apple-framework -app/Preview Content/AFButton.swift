//
//  AFButton.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 17/04/25.
//

import SwiftUI

struct AFButton: View {
    let text:String
    var body: some View {
        Button{
            
        } label:{
            Text(text)
                  .frame(width:280,height:50)
                  .fontWeight(.semibold)
                  .foregroundColor(.white)
                  .background(Color.red)
                  .font(.title2)
                  .cornerRadius(10)
        }
        }
}

#Preview {
    AFButton(text:"hello")
}
