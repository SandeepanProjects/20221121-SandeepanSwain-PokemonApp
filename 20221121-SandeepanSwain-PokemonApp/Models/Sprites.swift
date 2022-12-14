

import Foundation
struct Sprites : Codable {
	let back_default : String?
	let back_female : String?
	let back_shiny : String?
	let back_shiny_female : String?
	let front_default : String?
	let front_female : String?
	let front_shiny : String?
	let front_shiny_female : String?
	let other : Other?
	let versions : Versions?

	enum CodingKeys: String, CodingKey {

		case back_default = "back_default"
		case back_female = "back_female"
		case back_shiny = "back_shiny"
		case back_shiny_female = "back_shiny_female"
		case front_default = "front_default"
		case front_female = "front_female"
		case front_shiny = "front_shiny"
		case front_shiny_female = "front_shiny_female"
		case other = "other"
		case versions = "versions"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
		back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
		back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
		back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
		front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
		front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
		other = try values.decodeIfPresent(Other.self, forKey: .other)
		versions = try values.decodeIfPresent(Versions.self, forKey: .versions)
	}

}
