

import Foundation
struct Game_indices : Codable {
	let game_index : Int?
	let version : Version?

	enum CodingKeys: String, CodingKey {

		case game_index = "game_index"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		game_index = try values.decodeIfPresent(Int.self, forKey: .game_index)
		version = try values.decodeIfPresent(Version.self, forKey: .version)
	}

}
