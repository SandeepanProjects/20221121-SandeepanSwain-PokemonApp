

import Foundation
struct BlackWhite: Codable {
	let animated : Animated?
	let backDefault : String?
	let backFemale : String?
	let backShiny : String?
	let backShinyFemale : String?
	let frontDefault : String?
	let frontFemale : String?
	let frontShiny : String?
	let frontShinyFemale : String?

	enum CodingKeys: String, CodingKey {

		case animated = "animated"
		case backDefault = "back_default"
		case backFemale = "back_female"
		case backShiny = "back_shiny"
		case backShinyFemale = "back_shiny_female"
		case frontDefault = "front_default"
		case frontFemale = "front_female"
		case frontShiny = "front_shiny"
		case frontShinyFemale = "front_shiny_female"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		animated = try values.decodeIfPresent(Animated.self, forKey: .animated)
//		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
//		back_female = try values.decodeIfPresent(String.self, forKey: .back_female)
//		back_shiny = try values.decodeIfPresent(String.self, forKey: .back_shiny)
//		back_shiny_female = try values.decodeIfPresent(String.self, forKey: .back_shiny_female)
//		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
//		front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
//		front_shiny = try values.decodeIfPresent(String.self, forKey: .front_shiny)
//		front_shiny_female = try values.decodeIfPresent(String.self, forKey: .front_shiny_female)
//	}

}
