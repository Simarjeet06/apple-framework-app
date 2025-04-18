//
//  FrameworkGridViewModel.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 18/04/25.
//

import SwiftUI

final class FrameworkGridViewModel:ObservableObject{
    
    var selectedFramework:Framework?{
        didSet{
            isShowingDetailView=true
        }
    }
    
    
    @Published var isShowingDetailView=false
}
