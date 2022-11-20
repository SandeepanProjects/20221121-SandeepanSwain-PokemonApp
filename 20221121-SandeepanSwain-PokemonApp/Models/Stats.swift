

import Foundation
struct Stats : Codable {
	let base_stat : Int?
	let effort : Int?
	let stat : Stat?

	enum CodingKeys: String, CodingKey {

		case base_stat = "base_stat"
		case effort = "effort"
		case stat = "stat"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		base_stat = try values.decodeIfPresent(Int.self, forKey: .base_stat)
		effort = try values.decodeIfPresent(Int.self, forKey: .effort)
		stat = try values.decodeIfPresent(Stat.self, forKey: .stat)
	}

}
