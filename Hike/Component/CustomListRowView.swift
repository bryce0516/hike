//
//  CustomListRowView.swift
//  Hike
//
//  Created by Hye Sung Park on 2023/08/13.
//

import SwiftUI

struct CustomListRowView: View {
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
        CustomListRowView()
      }
    }
}
