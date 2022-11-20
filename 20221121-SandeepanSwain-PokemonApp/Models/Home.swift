

import Foundation
struct Home : Codable {
	let front_default : String?
	let front_female : String?
	let front_shiny : String?
	let front_shiny_female : String?

	enum CodingKeys: String, CodingKey {

		case front_default = "front_default"
		case front_female = "front_female"
		case front_shiny = "front_shiny"
		case front_shiny_female = "front_shiny_female"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
		front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
		front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
	}

}
