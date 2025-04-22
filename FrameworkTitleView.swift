//
//  FrameworkTitleView.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 22/04/25.
//

import SwiftUI

    struct individualFramework: View{
        var framework   : Framework
        var body: some View{
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                    
                
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            
            }
            .padding()
        }
    }


#Preview {
    individualFramework(framework: MockData.sampleFramework)
}
