//
//  FrameworkDisplayView.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 17/04/25.
//

import SwiftUI

struct FrameworkDisplayView: View {
    
    var framework:Framework
    @Binding var isShowingDetailView:Bool
    var body: some View {
        VStack{
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
            Spacer()
            individualFramework(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            AFButton(text:"Learn More")
        }
    }
}

#Preview {
    FrameworkDisplayView(framework: MockData.sampleFramework,isShowingDetailView:.constant(false))
}
