

import Foundation
struct GenerationVII : Codable {
	let icons : Icons?
	let ultraSunUltraMoon : UltraSunUltraMoon?

	enum CodingKeys: String, CodingKey {

		case icons = "icons"
		case ultraSunUltraMoon = "ultra-sun-ultra-moon"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		icons = try values.decodeIfPresent(Icons.self, forKey: .icons)
        ultraSunUltraMoon = try values.decodeIfPresent(UltraSunUltraMoon.self, forKey: .ultraSunUltraMoon)
	}

}
