import Foundation

struct Picture: Identifiable, Decodable {
    var id: String
    var alt_description: String
    var urls: [String : String]
    
}
