//
//  write.swift
//  audiorec
//
//  Created by joud alkahtany on 24/12/2023.
//

import Foundation
import SwiftUI

struct VentingPage: View {
    @State private var isClicked = false
    @State private var selectedButton: Int = 0
    @State private var note = ""
    @State private var title = ""

    @ObservedObject var vm = VoiceViewModel()
    
    @State private var showingList = false
    @State private var showingAlert = false
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                
                VStack (spacing: 10){
                    
                    Text("How are you  feeling?")
                    //   .font(.title)
                    //   .fontWeight(.bold)
                        .font(.system(size: 40, weight: .bold))
                        .multilineTextAlignment(.leading)
                    //                        .padding(.top, -250)
                    // .position(x: 150.0, y: 100.0)
                    //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10) {
                            
                            //Happy Emoji
                            Button {
                                self.selectedButton = 1
                                
                            }
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 24)
                                
                                    .foregroundColor(selectedButton == 1 ? Color("DarkGrey") : Color("Color"))
                                    .frame(width: 130, height: 130)
                                Image("joy")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            }
                        }
                            
                            
                            //Sad Emoji
                            Button {
                                self.selectedButton = 2
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(selectedButton == 2 ? Color("DarkGrey") : Color("Color"))
                                        .frame(width: 130, height: 130)
                                    Image("sadness")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                }
                            }
                            
                            //Mad Emoji
                            Button {
                                self.selectedButton = 3
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(selectedButton == 3 ? Color("Color") : Color("LightGrey"))
                                        .frame(width: 130, height: 130)
                                    Image("angry")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                }
                            }
                            
                            //Anxious Emoji
                            Button {
                                self.selectedButton = 4
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(selectedButton == 4 ? Color("Color") : Color("LightGrey"))
                                        .frame(width: 130, height: 130)
                                    Image("fear")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                }
                            }
                            
                        }
                        
                        
                        .padding(.horizontal)
                        
                        
                    }
                    
                    
                    
                    
                    
                    Text("What was the reason ?")
                        .font(.system(size: 20, weight: .bold))
                    //                        .multilineTextAlignment(.leading)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -150)
                        .frame(width: 300, height: 60)
                    
                    HStack {
                        
                        
                        // Button 'School'
                        Button {
                            
                        } label: {
                            
                            
                            Text("School")
                                .font(.system(size: 16))
                                .frame(width: 65, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 25
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                            
                        }
                        
                        
                        // Button 'Friends'
                        Button {
                            
                        } label: {
                            
                            
                            Text("Friends")
                                .font(.system(size: 16))
                                .frame(width: 65, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                        }
                        
                        // Button 'Work'
                        Button {
                            
                        } label: {
                            
                            
                            Text("Work")
                                .font(.system(size: 16))
                                .frame(width: 55, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                        }
                        
                        // Button 'W'
                        Button {
                            
                        } label: {
                            
                            
                            Text("Family")
                                .font(.system(size: 16))
                                .frame(width: 55, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                        }
                        Button {
                            
                        } label: {
                            
                            
                            Text("RelationShip")
                                .font(.system(size: 16))
                                .frame(width: 55, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                        }
                        Button {
                            
                        } label: {
                            
                            
                            Text("Work")
                                .font(.system(size: 16))
                                .frame(width: 55, height: 30)
                                .foregroundColor(.black)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20
                                    )
                                    .stroke(.black , lineWidth: 1)
                                )
                        }
                    }
                    
                    Text("What Happened?")
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 60)
                    
                    TextField("title",text: $title)
                        .frame(width: 360, height:50)
                        .background(Color("Color"))
                        
                    
                        .multilineTextAlignment(.leading)
                    TextField("Type here..", text: $note)
                        .padding()
                        .cornerRadius(0)
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                    
                        .background(Color("Color"))
                        .bold()
                        .padding(.bottom, 30.0)
                    
                    
                    
                  
                    
                    
                    Image(systemName: vm.isRecording ? "mic.fill" : "mic")
                        .foregroundColor(.black)
                        .offset(x:157,y: -80)
                        .font(.system(size: 33))
                        .onTapGesture {
                            if vm.isRecording == true {
                                vm.stopRecording()
                            } else {
                                vm.startRecording()
                                
                            }
                        }
                    
                    //submit action
                    Button(action: {
                        if vm.isRecording == true {
                                vm.stopRecording()
                                         }
                                         vm.fetchAllRecording()
                                         showingList.toggle()
                                     }) {
                                         Text("add")
                                             .foregroundColor(.black)
                                             .font(.system(size: 20, weight: .bold))
                                     }
                                     .sheet(isPresented: $showingList, content: {
                                         recordingListView(text: note,title1: title)
                                     })//end
                    
                    
                }
                
                
            }
            
            
            
        }
        
    }
    
    
}
    
    



#Preview {
    VentingPage()
                .environment(\
                    .locale,
                    .init(identifier: "ar"))
        
}
