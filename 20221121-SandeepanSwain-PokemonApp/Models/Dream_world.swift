

import Foundation
struct Dream_world : Codable {
	let front_default : String?
	let front_female : String?

	enum CodingKeys: String, CodingKey {

		case front_default = "front_default"
		case front_female = "front_female"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
		front_female = try values.decodeIfPresent(String.self, forKey: .front_female)
	}

}
