#ifndef TNI_API_HEADER_CONSTRAINEDTILE
#define TNI_API_HEADER_CONSTRAINEDTILE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ConstrainedTile : public Node3D {
	using Node3D::Node3D;

	constexpr ConstrainedTile(Node3D base) : Node3D{base} {}
	constexpr ConstrainedTile(uint64_t addr) : Node3D{addr} {}
	constexpr ConstrainedTile(Object obj) : ConstrainedTile{obj.address()} {}
	ConstrainedTile(Variant variant) : ConstrainedTile{variant.as_object().address()} {}

	PROPERTY(Z_POS, Variant);  // Const value type was not supported.
	PROPERTY(Z_NEG, Variant);  // Const value type was not supported.
	PROPERTY(X_POS, Variant);  // Const value type was not supported.
	PROPERTY(X_NEG, Variant);  // Const value type was not supported.
	PROPERTY(Sides, Variant);  // Const value type was not supported.


	inline Variant can_be_neighbor(int64_t our_var_num, Variant our_side, ConstrainedTile neighbor_tile, int64_t neighbor_var_num);
	inline Variant init_constraint_data(bool all_required);
	inline void update_constraint_data(Variant constraint, Variant side, String keyword);
	inline void apply_variant(int64_t var_n);
	inline void get_variant_count();
	inline void get_variant_constraint(int64_t var_n);
};

#include "ConstrainedTile.hpp"

inline Variant ConstrainedTile::can_be_neighbor(int64_t our_var_num, Variant our_side, ConstrainedTile neighbor_tile, int64_t neighbor_var_num) { return operator()("can_be_neighbor", our_var_num, our_side, neighbor_tile, neighbor_var_num); }
inline Variant ConstrainedTile::init_constraint_data(bool all_required) { return operator()("init_constraint_data", all_required); }
inline void ConstrainedTile::update_constraint_data(Variant constraint, Variant side, String keyword) { voidcall("update_constraint_data", constraint, side, keyword); }
inline void ConstrainedTile::apply_variant(int64_t var_n) { voidcall("apply_variant", var_n); }
inline void ConstrainedTile::get_variant_count() { voidcall("get_variant_count"); }
inline void ConstrainedTile::get_variant_constraint(int64_t var_n) { voidcall("get_variant_constraint", var_n); }

#endif
