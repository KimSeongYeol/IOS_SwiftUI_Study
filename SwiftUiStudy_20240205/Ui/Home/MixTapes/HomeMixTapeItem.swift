//
//  HomeMixTapeItem.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeMixTapeItem: View {
    @State var mixType: HomeResponse.MixTapes?
    
    var body: some View {
        VStack {
            Text("\(mixType?.name ?? "")")
            Text("Mix")
            
            Image(systemName: "sunrise.circle.fill")
                .frame(minWidth: 100, minHeight: 100)
                .background(Color.gray)
            Spacer()
            Text("\(mixType?.message ?? "")")
        }
        .padding(10)
        .frame(maxWidth: 200, maxHeight: 250)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .background(Color.red)
    }
}

struct HomeMixTapeItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeMixTapeItem()
            .previewLayout(.sizeThatFits)
    }
}
