//
//  ProfileCoffe.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import SwiftUI
struct ProfileCoffe: View {
    var body: some View {
        VStack{
           NoteScroll()
        ProfileNote()
        }
        
        }
}
struct ProfileNote: View {
  @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Note.getAllNote())
    var note: FetchedResults<Note>
@State private var newNotes = ""
    func removeNote(at offsets: IndexSet) {
          for index in offsets {
              let man = note[index]
              managedObjectContext.delete(man)
              do {
                  try self.managedObjectContext.save()
              } catch {
                  print(error)
              }
          }
         
      }
    var body: some View {
    NavigationView{
     
   List{
                Section(header: Text("New notes")) {
                    HStack{
                        TextField("New notes...................................................", text: $newNotes)
                            .foregroundColor(Color.black)
                        Button(action: {
                            let note = Note(context: self.managedObjectContext)
                            note.textField = self.newNotes
                            note.createdAt = Date()
                            do {
                                try self.managedObjectContext.save()
                            } catch{
                                print(error)
                            }
                            self.newNotes = ""
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                        })
                
                    }
                     .listRowBackground(Color("Color-3"))
                }
               
                //Section 3
                Section(header: Text("Your notes")) {
                    ForEach(self.note, id: \.self) { note in
                        NoteItemView(textField:  note.textField, createdAt: "\(note.createdAt)")
                    }.onDelete(perform: removeNote)
                
                }
                .listRowBackground(Color("Color-3"))
    
        }

        .navigationBarTitle(Text("Gymnastic notes"))
            .navigationBarItems(trailing: EditButton())
        }
   
    .navigationViewStyle(StackNavigationViewStyle())
  
        }
}
       


struct NoteItemView: View{
    var textField: String = ""
    var createdAt: String
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(textField)
                    .font(.headline)
                Text(createdAt)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
struct NoteScroll: View {
    var body: some View {
        HStack{
        ScrollView(.horizontal, showsIndicators: true ){
                               HStack {
                                  
                                                        Image("coffe1")
                                                                         .resizable()
                                                                        .scaledToFit()
                                     .padding(.leading,5)
                                    
                                                        Image("coffe2")
                                                                         .resizable()
                                                                        .scaledToFit()
                                      .padding(.leading,5)
                                                        Image("coffe3")
                                                                        .resizable()
                                                                        .scaledToFit()
                                      .padding(.leading,10)
                                                        Image("cofee4")
                                                                         .resizable()
                                                                        .scaledToFit()
                                    
                                                         Image("coffe5")
                                                                        .resizable()
                                                                        .scaledToFit()
                                      .padding(.leading,5)
                                                           .padding(.trailing, 20)
                           
                                                    }
                               .shadow(radius: 5)
                                
                           }
                                 .frame(width: UIScreen.main.bounds.width, height: 180)
                             .background(Color("Color-1"))
                            .shadow(radius: 10)
                       //}
                       .clipShape(Corners(corner: [.bottomLeft,.topLeft,.bottomRight,.topRight], size: CGSize(width: 55, height: 55)))
                       .listRowBackground(Color("Color-3"))
        }
    }
}
