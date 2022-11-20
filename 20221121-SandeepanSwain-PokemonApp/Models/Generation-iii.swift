

import Foundation
struct GenerationIII : Codable {
	let emerald : Emerald?
	let fireredLeafgreen : FireredLeafGreen?
	let rubySapphire : RubySapphire?

	enum CodingKeys: String, CodingKey {

		case emerald = "emerald"
		case fireredLeafgreen = "firered-leafgreen"
		case rubySapphire = "ruby-sapphire"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		emerald = try values.decodeIfPresent(Emerald.self, forKey: .emerald)
//		firered-leafgreen = try values.decodeIfPresent(Firered-leafgreen.self, forKey: .firered-leafgreen)
//		ruby-sapphire = try values.decodeIfPresent(Ruby-sapphire.self, forKey: .ruby-sapphire)
//	}

}
