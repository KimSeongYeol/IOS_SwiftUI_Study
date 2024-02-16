//
//  ShoppingView.swift
//  SwiftUiStudy_20240205
//
//  Created by 김태현 on 2024/02/06.
//

import SwiftUI

struct ShoppingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var viewModel = ShoppingViewModel()
    
    @State var isShowMenu: Bool = false
    @State var tab: ShoppingMainView?
    @State var uiTabbarController: UITabBarController?
    @State var crdNo: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                SubHeaderView(title: "쇼핑 서브 메인")
                HStack {
                    TextField("Enter Your Number", text: $crdNo)
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .toolbar {
                            ToolbarItem(placement: .keyboard, content: {
                                Button("Done") {
                                }
                            })
                        }
                    
                    Button(action: {
                        if crdNo.isEmpty {
                            self.viewModel.fetchAddItem()
                        } else {
                            self.viewModel.fetchAddItem(crdNo: crdNo)
                        }
                    }, label: {
                        Text("추가").frame(minWidth: 100, minHeight: 50)
                    })
                    .frame(minWidth: 100, minHeight: 50)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal, 20)
                
                List {
                    ForEach(self.viewModel.shoppingData, id: \.id) { model in
                        ShoppingItem(shoppingModel: .constant(model), buttonAction: .constant { crdNo in
                            if let index = self.viewModel.shoppingData.firstIndex(where: {$0.crdNo == crdNo}) {
                                self.viewModel.shoppingData.remove(at: index)
                            }
                        })
                    }
                    .onDelete(perform: { indexSet in
                        self.viewModel.shoppingData.remove(atOffsets: indexSet)
                    })
                }
                .onAppear {
                    if let tab = self.tab {
                        tab.tabBarVisibility = .hidden
                    }
                }
                .onDisappear {
                    if let tab = self.tab {
                        tab.tabBarVisibility = .visible
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
        }
        .background(Color.red)
        
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
