

import Foundation
struct GenerationVI : Codable {
	let omegarubyAlphasapphire : OmegarubyAlphasapphire?
	let xy : Xy?

	enum CodingKeys: String, CodingKey {

		case omegarubyAlphasapphire = "omegaruby-alphasapphire"
		case xy = "x-y"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//        omegarubyAlphasapphire = try values.decodeIfPresent(OmegarubyAlphasapphire.self, forKey: .omegarubyAlphasapphire)
//		xy = try values.decodeIfPresent(Xy.self, forKey: .xy)
//	}

}
