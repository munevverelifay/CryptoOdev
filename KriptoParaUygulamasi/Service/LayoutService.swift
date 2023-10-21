//
//  LayoutService.swift
//  KriptoParaUygulamasi
//
//  Created by Münevver Elif Ay on 21.10.2023.
//

import Foundation
import UIKit

struct windowConstant {
    
    private static let window = UIApplication.shared.connectedScenes.first as? UIWindowScene
    
    static var getTopPadding: CGFloat {
        return window?.windows.first?.safeAreaInsets.top ?? 0
    }
    
    static var getBottomPadding: CGFloat {
        return window?.windows.first?.safeAreaInsets.bottom ?? 0
    }
    
}
