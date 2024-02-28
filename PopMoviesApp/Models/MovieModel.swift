//
//  MovieModel.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import Foundation

enum Genre: String, CaseIterable, Identifiable{
    var id: String{
        self.rawValue
    }
    case action="Action"
    case adventure="Adventure"
    case drama="Drama"
    case comedy="Comedy"
    case romance="Romance"
}
struct Movie: Identifiable{
    let id=UUID()
    let name:String
    let image:String
    let description:String
    let genre:Genre.RawValue
    let datePublished:String
    
}
extension Movie{
    static let all:[Movie]=[
        Movie(
            name: "The Godfather",
            image: "",
            description: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don's youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.",
            genre: "Drama",
            datePublished: "March 24, 1972"
            ),
        Movie(name: "Casablanca",
            image:"https://www.seriouseats.com/thmb/K6VksPblIy1WK4EtaXBdydAJLwU=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2018__09__20180924-brown-butter-cake-vicky-wasik-21-a9014e0de9a94d13b6f7b80aedaf834d.jpg",
            description: "Rick Blaine (Humphrey Bogart), who owns a nightclub in Casablanca, discovers his old flame Ilsa (Ingrid Bergman) is in town with her husband, Victor Laszlo (Paul Henreid). Laszlo is a famed rebel, and with Germans on his tail, Ilsa knows Rick can help them get out of the country.",
            genre: "Action",
            datePublished: "2022-9-23")
    ]
}
