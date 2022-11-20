

import Foundation
struct Other : Codable {
	let dreamWorld : Dream_world?
	let home : Home?
	let officialArtwork : OfficialArtwork?

	enum CodingKeys: String, CodingKey {

		case dreamWorld = "dream_world"
		case home = "home"
		case officialArtwork = "official-artwork"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		dream_world = try values.decodeIfPresent(Dream_world.self, forKey: .dream_world)
//		home = try values.decodeIfPresent(Home.self, forKey: .home)
//		official-artwork = try values.decodeIfPresent(Official-artwork.self, forKey: .official-artwork)
//	}

}
