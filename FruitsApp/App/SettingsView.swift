//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Alva Yonara Puramandya on 19/02/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // MARK: - SECTION 1
                GroupBox(
                    label:
                        SettingsLabelView(labelText: "FruitApps", labelImage: "info.circle")
                ){
                    Divider().padding(.vertical, 4)
                    HStack(alignment: .center, spacing: 10) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                        
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                    }
                }
                
                // MARK: - SECTION 2
                
                // MARK: - SECTION 3
                GroupBox(
                    label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                ) {
                    SettingsRowView(name: "Developer", content: "Alva Yonara Puramandya")
                    SettingsRowView(name: "Design", content: "Robert")
                    SettingsRowView(name: "Compatibility", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "Alvayonara", linkDestination: "alvayonara.com")
                    SettingsRowView(name: "Github", linkLabel: "alvayonara", linkDestination: "github.com")
                    SettingsRowView(name: "LinkedIn", linkLabel: "Alva Yonara Puramandya", linkDestination: "linked.in")
                    SettingsRowView(name: "Version", content: "1.0.0")
                }
            } //: SCROLLVIEW
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            })
            .padding()
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
