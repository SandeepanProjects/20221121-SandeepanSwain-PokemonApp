

import Foundation
struct FireredLeafGreen : Codable {
	let backDefault : String?
	let backShiny : String?
	let frontDefault : String?
	let frontShiny : String?

	enum CodingKeys: String, CodingKey {

		case backDefault = "back_default"
		case backShiny = "back_shiny"
		case frontDefault = "front_default"
		case frontShiny = "front_shiny"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//        backDefault = try values.decodeIfPresent(String.self, forKey: .backDefault)
//        backShiny = try values.decodeIfPresent(String.self, forKey: .backShiny)
//        frontDefault = try values.decodeIfPresent(String.self, forKey: .frontDefault)
//        frontShiny = try values.decodeIfPresent(String.self, forKey: .frontShiny)
//	}

}
