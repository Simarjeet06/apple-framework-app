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
    @State private var isShowingSafariView:Bool=false
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
            Button{
                isShowingSafariView=true
            }label:{
                AFButton(text:"Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView , content:{
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}
#Preview {
    FrameworkDisplayView(framework: MockData.sampleFramework,isShowingDetailView:.constant(false))
}
