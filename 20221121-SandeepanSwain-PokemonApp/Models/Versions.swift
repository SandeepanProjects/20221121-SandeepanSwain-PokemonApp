

import Foundation
struct Versions : Codable {
	let generationI : GenerationI?
	let generationII : GenerationII?
	let generationIII : GenerationIII?
	let generationIV : GenerationIV?
	let generationV : GenerationV?
	let generationVI : GenerationVI?
	let generationVII : GenerationVII?
	let generationVIII : GenerationVIII?

	enum CodingKeys: String, CodingKey {

		case generationI = "generation-i"
		case generationII = "generation-ii"
		case generationIII = "generation-iii"
		case generationIV = "generation-iv"
		case generationV = "generation-v"
		case generationVI = "generation-vi"
		case generationVII = "generation-vii"
		case generationVIII = "generation-viii"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		generation-i = try values.decodeIfPresent(Generation-i.self, forKey: .generation-i)
//		generation-ii = try values.decodeIfPresent(Generation-ii.self, forKey: .generation-ii)
//		generation-iii = try values.decodeIfPresent(Generation-iii.self, forKey: .generation-iii)
//		generation-iv = try values.decodeIfPresent(Generation-iv.self, forKey: .generation-iv)
//		generation-v = try values.decodeIfPresent(Generation-v.self, forKey: .generation-v)
//		generation-vi = try values.decodeIfPresent(Generation-vi.self, forKey: .generation-vi)
//		generation-vii = try values.decodeIfPresent(Generation-vii.self, forKey: .generation-vii)
//		generation-viii = try values.decodeIfPresent(Generation-viii.self, forKey: .generation-viii)
//	}

}
