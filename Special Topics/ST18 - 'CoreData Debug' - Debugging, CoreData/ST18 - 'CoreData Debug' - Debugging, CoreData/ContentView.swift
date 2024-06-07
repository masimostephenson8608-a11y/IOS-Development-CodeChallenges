//  🏔️ MTECH Code Challenge ST18: "CoreData Debug"
//  Concept: Practice tracking down the source of an error; review CoreData skills

//  Instructions:
    //  Something has gone wrong with your chicken database app, the app you use to track and sort your chickens.
    //  Track down and fix the bug.

//  Notes:
    //  Getting CoreData compatible apps to run in preview can be tricky. Use Simulator for this app.

//  ⌺ Black Diamond Challenge:
    //  Expand the functionality of the chicken tracker app as you see fit:
        //  Add new properties to chickens,
        //  Add sorting functionality to the list view,
        //  etc.

import SwiftUI
import CoreData

struct ContentView: View {
    var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.chickens) { chicken in
                    NavigationLink {
                        Text("Chicken at \(chicken.timestamp!, formatter: chickenFormatter)")
                    } label: {
                        Text(chicken.timestamp!, formatter: chickenFormatter)
                    }
                }
                .onDelete(perform: viewModel.deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: viewModel.addChicken) {
                        Label("Add Chicken", systemImage: "plus")
                    }
                }
            }
            Text("Select a chicken")
        }
    }
}

extension ContentView {
    class ViewModel {
        @Environment(\.managedObjectContext) private var viewContext
        
        @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \Chicken.name, ascending: true)],
            animation: .default)
        var chickens: FetchedResults<Chicken>

        func addChicken() {
            withAnimation {
                let newChicken = Chicken(context: viewContext)
                newChicken.name = 
                
                do {
                    try viewContext.save()
                } catch {
                    let nsError = error as NSError
                    fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                }
            }
        }
        
        func deleteItems(offsets: IndexSet) {
            withAnimation {
                offsets.map { chickens[$0] }.forEach(viewContext.delete)
                
                do {
                    try viewContext.save()
                } catch {
                    let nsError = error as NSError
                    fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                }
            }
        }
    }
}

private let chickenFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()
