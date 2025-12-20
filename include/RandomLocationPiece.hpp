#ifndef TNI_API_HEADER_RANDOMLOCATIONPIECE
#define TNI_API_HEADER_RANDOMLOCATIONPIECE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RandomLocationPiece : public Node2D {
	using Node2D::Node2D;

	constexpr RandomLocationPiece(Node2D base) : Node2D{base} {}
	constexpr RandomLocationPiece(uint64_t addr) : Node2D{addr} {}
	constexpr RandomLocationPiece(Object obj) : RandomLocationPiece{obj.address()} {}
	RandomLocationPiece(Variant variant) : RandomLocationPiece{variant.as_object().address()} {}


	PROPERTY(piece_dir, String);
	PROPERTY(n_users, int64_t);
	PROPERTY(refborder, Variant);

	inline Variant get_possible_upn();
	inline LocationPiece choose_piece();
};

#include "LocationPiece.hpp"

inline Variant RandomLocationPiece::get_possible_upn() { return operator()("get_possible_upn"); }
inline LocationPiece RandomLocationPiece::choose_piece() { return LocationPiece(operator()("choose_piece").as_object().address()); }

#endif
