//
//  ContentView.swift
//  MANAWidget
//
//  Created by 김동준 on 2023/09/02.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 40) {
            daySetting()
            HStack(spacing: 30) {
                uploadImages(type: .disk)
                uploadImages(type: .server)
            }
        }
        .padding()
    }
    
    @ViewBuilder
    func daySetting() -> some View {
        HStack(spacing: 15) {
            Text("날짜 2023.08.19")
                .font(.system(size: 23))
            Button {
                
            } label: {
                Image(systemName: "calendar.badge.clock")
                    .font(.system(size: 23))
                    .foregroundColor(.blue)
            }
        }
    }
    
    @ViewBuilder
    func uploadImages(type: ImageUploadType) -> some View {
        VStack(spacing: 15) {
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .padding(50)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue)
                    }
                    .foregroundColor(.blue)
            }
            Text(type.description)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

enum ImageUploadType {
    case disk
    case server
    
    var description: String {
        switch self {
        case .disk:
            return "아이폰에서 가져오기"
        case .server:
            return "서버에서 가져오기"
        }
    }
}
