

import Foundation
struct Abilities : Codable {
	let ability : Ability?
	let isHidden : Bool?
	let slot : Int?

	enum CodingKeys: String, CodingKey {

		case ability = "ability"
		case isHidden = "is_hidden"
		case slot = "slot"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		ability = try values.decodeIfPresent(Ability.self, forKey: .ability)
//		is_hidden = try values.decodeIfPresent(Bool.self, forKey: .is_hidden)
//		slot = try values.decodeIfPresent(Int.self, forKey: .slot)
//	}

}
