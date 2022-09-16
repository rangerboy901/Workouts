//
//  UIApplication+Extension.swift
//  Workouts
//
//  Created by Joseph Wil;liam DeWeese on 9/15/22.
//

import UIKit

extension UIApplication {
    
    var keyWindow: UIWindow? {
        
        return UIApplication.shared.connectedScenes
        
            .filter { $0.activationState == .foregroundActive }
        
            .first(where: {$0 is UIWindowScene })
            .flatMap({ $0 as? UIWindowScene })?.windows
            .first(where: \.isKeyWindow)
    }
}
