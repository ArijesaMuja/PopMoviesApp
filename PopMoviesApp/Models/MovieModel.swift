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
            image: "https://media.newyorker.com/photos/594044d90c240c2a1fd678ce/1:1/w_2105,h_2105,c_limit/970324_ra409.jpg",
            description: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando).",
            genre: "Drama",
            datePublished: "1972-03-10"
            ),
        Movie(name: "Casablanca",
            image:"https://static.wikia.nocookie.net/warner-bros-entertainment/images/b/b3/CasablancaPoster-Gold.jpg/revision/latest?cb=20200826163009",
            description: "Rick Blaine (Humphrey Bogart), who owns a nightclub in Casablanca, discovers his old flame Ilsa (Ingrid Bergman) is in town with her husband, Victor Laszlo (Paul Henreid). Laszlo is a famed rebel, and with Germans on his tail, Ilsa knows Rick can help them get out of the country.",
            genre: "Action",
            datePublished: "2022-9-23"),
        Movie(name: "Barbie",
             image:"https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk0NDg3NzEyODkwMjM0Mzcz/margot-robbie-barbie-movie-2023.jpg",
             description: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
             genre: "Adventure",
             datePublished: "2023-10-10"),
        Movie(name: "Upgraded",
             image:"https://m.media-amazon.com/images/M/MV5BZWNhMjc1MzMtZGUyOC00NjhiLWJiM2YtMWNkMzU0YjgwZDU0XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_FMjpg_UX1000_.jpg",
             description: "An aspiring art intern is invited on a last-minute work trip to London, where she meets a handsome stranger.",
             genre: "Romance",
             datePublished: "2024-01-08"),
        Movie(name: "Cinderella",
             image:"https://m.media-amazon.com/images/M/MV5BZTk3ZTEzNGUtZTcwYy00NmRmLWFhMGYtZjA4NWY1ZWI4MzMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
             description: "After her father's death, Ella is tormented by her venomous stepmother and stepsisters. Her life changes dramatically when a crown prince, who is smitten with her, invites her to a royal ball.",
             genre: "Adventure",
             datePublished: "2022-01-10"),    
    ]
}
