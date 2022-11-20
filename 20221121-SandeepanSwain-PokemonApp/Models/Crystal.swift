

import Foundation
struct Crystal : Codable {
	let backDefault : String?
	let backShiny : String?
	let back_shiny_transparent : String?
	let back_transparent : String?
	let front_default : String?
	let front_shiny : String?
	let front_shiny_transparent : String?
	let front_transparent : String?

	enum CodingKeys: String, CodingKey {

		case backDefault = "back_default"
		case backShiny = "back_shiny"
		case back_shiny_transparent = "back_shiny_transparent"
		case back_transparent = "back_transparent"
		case front_default = "front_default"
		case front_shiny = "front_shiny"
		case front_shiny_transparent = "front_shiny_transparent"
		case front_transparent = "front_transparent"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
//		back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
//		back_shiny_transparent = try values.decodeIfPresent(String.self, forKey: .back_shiny_transparent)
//		back_transparent = try values.decodeIfPresent(String.self, forKey: .back_transparent)
//		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
//		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
//		front_shiny_transparent = try values.decodeIfPresent(String.self, forKey: .front_shiny_transparent)
//		front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
//	}

}
