

import Foundation
struct GenerationII: Codable {
    var crystal : Crystal?
    var gold : Gold?
    var silver : Silver?

	enum CodingKeys: String, CodingKey {

		case crystal = "crystal"
		case gold = "gold"
		case silver = "silver"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		crystal = try values.decodeIfPresent(Crystal.self, forKey: .crystal)
		gold = try values.decodeIfPresent(Gold.self, forKey: .gold)
		silver = try values.decodeIfPresent(Silver.self, forKey: .silver)
	}

}
