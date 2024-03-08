//
//  HomeMixTapeView.swift
//  SwiftUiStudy_20240205
//
//  Created by seongyeol on 3/8/24.
//

import SwiftUI

struct HomeMixTapeView: View {
    @State var mixTapes: [HomeResponse.MixTapes] = []
    var body: some View {
        VStack {
            HStack {
                Text("나를 위한 믹스테잎")
                Spacer()
                Button("더보기") {
                    
                }
                .padding(10)
            }
            .padding(.horizontal, 10)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    Spacer(minLength: 10)
                    ForEach(mixTapes, id: \.id) { mixTape in
                        HomeMixTapeItem(mixType: mixTape)
                    }
                }
            }
            .frame(minHeight: 250, maxHeight: 250)
            .scrollIndicators(.never)
        }
    }
}

struct HomeMixTapeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMixTapeView()
            .previewLayout(.sizeThatFits)
    }
}
