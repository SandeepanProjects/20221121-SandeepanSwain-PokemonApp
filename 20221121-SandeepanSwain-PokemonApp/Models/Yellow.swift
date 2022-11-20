

import Foundation
struct Yellow : Codable {
	let back_default : String?
	let back_gray : String?
	let back_transparent : String?
	let front_default : String?
	let front_gray : String?
	let front_transparent : String?

	enum CodingKeys: String, CodingKey {

		case back_default = "back_default"
		case back_gray = "back_gray"
		case back_transparent = "back_transparent"
		case front_default = "front_default"
		case front_gray = "front_gray"
		case front_transparent = "front_transparent"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		back_default = try values.decodeIfPresent(String.self, forKey: .back_default)
//		back_gray = try values.decodeIfPresent(String.self, forKey: .back_gray)
//		back_transparent = try values.decodeIfPresent(String.self, forKey: .back_transparent)
//		front_default = try values.decodeIfPresent(String.self, forKey: .front_default)
//		front_gray = try values.decodeIfPresent(String.self, forKey: .front_gray)
//		front_transparent = try values.decodeIfPresent(String.self, forKey: .front_transparent)
//	}

}
