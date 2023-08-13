//
//  CustomListRowView.swift
//  Hike
//
//  Created by Hye Sung Park on 2023/08/13.
//

import SwiftUI

struct CustomListRowView: View {
  // MARK: - PROPERTIES
  
  @State var rowLabel: String
  @State var rowIcon: String
  @State var rowContent: String
  @State var rowTintColor: Color
  
  var body: some View {
    LabeledContent {
      Text("Hike")
        .foregroundColor(.primary)
        .fontWeight(.heavy)
    } label: {
      HStack {
        ZStack {
          RoundedRectangle(cornerRadius: 8)
            .frame(width: 30, height: 30)
            .foregroundColor(.blue)
          Image(systemName: "apps.iphone")
            .foregroundColor(.white)
            .fontWeight(.semibold)
        }
        Text("Application")
      }
    }
  }
}

struct CustomListRowView_Previews: PreviewProvider {
  static var previews: some View {
    List {
      CustomListRowView(
        rowLabel: "Designer",
        rowIcon: "paintpalette",
        rowContent: "John Doe",
        rowTintColor: .pink
      )
    }
  }
}
