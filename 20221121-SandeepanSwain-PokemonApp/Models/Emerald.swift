

import Foundation
struct Emerald : Codable {
	let front_default : String?
	let front_shiny : String?

	enum CodingKeys: String, CodingKey {

		case front_default = "front_default"
		case front_shiny = "front_shiny"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
	}

}
