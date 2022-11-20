

import Foundation
struct OfficialArtwork : Codable {
	let frontDefault : String?

	enum CodingKeys: String, CodingKey {

		case frontDefault = "front_default"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
//	}

}
