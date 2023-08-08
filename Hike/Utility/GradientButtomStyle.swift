//
//  GradientButtomStyle.swift
//  Hike
//
//  Created by Hye Sung Park on 2023/08/08.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    print("pressed : \(configuration.isPressed)")
    return configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30)
      .background(
        // Conditional Statament with Nil Coalescing
        // Condition ? A : B
        // A: When User pressed the Button
        // B: When the Button is not pressed

        configuration.isPressed ?
        LinearGradient(
          colors: [.customGrayMedium, .customGrayLight],
          startPoint: .top,
          endPoint: .bottom
        ):LinearGradient(
          colors: [.customGrayLight, .customGrayMedium],
          startPoint: .top,
          endPoint: .bottom
        )
      )
      .cornerRadius(40)
      
  }
}
