

import Foundation
struct RubySapphire : Codable {
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
//		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
//		back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
//		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
//		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
//	}

}
