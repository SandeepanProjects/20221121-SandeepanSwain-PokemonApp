

import Foundation
struct GenerationIV: Codable {
	let diamondPearl : DiamondPearl?
	let heartgoldSoulsilver : HeartGoldSoulSilver?
	let platinum : Platinum?

	enum CodingKeys: String, CodingKey {

		case diamondPearl = "diamond-pearl"
		case heartgoldSoulsilver = "heartgold-soulsilver"
		case platinum = "platinum"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		diamond-pearl = try values.decodeIfPresent(Diamond-pearl.self, forKey: .diamond-pearl)
//		heartgold-soulsilver = try values.decodeIfPresent(Heartgold-soulsilver.self, forKey: .heartgold-soulsilver)
//		platinum = try values.decodeIfPresent(Platinum.self, forKey: .platinum)
//	}

}
