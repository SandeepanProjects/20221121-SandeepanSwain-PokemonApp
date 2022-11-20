

import Foundation
struct Gold : Codable {
	let back_default : String?
	let back_shiny : String?
	let front_default : String?
	let front_shiny : String?
	let front_transparent : String?

	enum CodingKeys: String, CodingKey {

		case back_default = "back_default"
		case back_shiny = "back_shiny"
		case front_default = "front_default"
		case front_shiny = "front_shiny"
		case front_transparent = "front_transparent"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
		back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
		front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
	}

}
