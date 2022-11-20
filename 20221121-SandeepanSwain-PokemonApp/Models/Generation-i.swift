

import Foundation
struct GenerationI: Codable {
	let redblue: RedBlue?
	let yellow: Yellow?

	enum CodingKeys: String, CodingKey {

		case redblue = "red-blue"
		case yellow = "yellow"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		red-blue = try values.decodeIfPresent(Red-blue.self, forKey: .red-blue)
//		yellow = try values.decodeIfPresent(Yellow.self, forKey: .yellow)
//	}

}
