

import Foundation
struct Version_group_details : Codable {
	let level_learned_at : Int?
	let move_learn_method : Move_learn_method?
	let version_group : Version_group?

	enum CodingKeys: String, CodingKey {

		case level_learned_at = "level_learned_at"
		case move_learn_method = "move_learn_method"
		case version_group = "version_group"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		level_learned_at = try values.decodeIfPresent(Int.self, forKey: .level_learned_at)
		move_learn_method = try values.decodeIfPresent(Move_learn_method.self, forKey: .move_learn_method)
		version_group = try values.decodeIfPresent(Version_group.self, forKey: .version_group)
	}

}
