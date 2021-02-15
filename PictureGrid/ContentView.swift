import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    @ObservedObject var randomImages = pictureViewModel()
    var colums = [
        GridItem(spacing: 0),
        GridItem(spacing: 0)
    ]
    
    var body: some View {
          ScrollView {
              LazyVGrid(columns: colums, spacing: 10) {
                  ForEach(randomImages.photoArray, id: \.id) { photo in
                      WebImage(url: URL(string: photo.urls["thumb"]!))
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 150, height: 150)
                          .cornerRadius(14)
                          .clipped()
                  }.padding(15)
              }.navigationTitle("Pictures")
          }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
