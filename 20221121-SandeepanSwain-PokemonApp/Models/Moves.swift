

import Foundation
struct Moves : Codable {
	let move : Move?
	let version_group_details : [Version_group_details]?

	enum CodingKeys: String, CodingKey {

		case move = "move"
		case version_group_details = "version_group_details"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		move = try values.decodeIfPresent(Move.self, forKey: .move)
		version_group_details = try values.decodeIfPresent([Version_group_details].self, forKey: .version_group_details)
	}

}
