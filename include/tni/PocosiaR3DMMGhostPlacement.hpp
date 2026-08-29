#ifndef TNI_API_HEADER_POCOSIAR3DMMGHOSTPLACEMENT
#define TNI_API_HEADER_POCOSIAR3DMMGHOSTPLACEMENT
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PocosiaRaycast3DMouseMapperFeature.hpp"

struct PocosiaR3DMMGhostPlacement : public PocosiaRaycast3DMouseMapperFeature {
	using PocosiaRaycast3DMouseMapperFeature::PocosiaRaycast3DMouseMapperFeature;

	constexpr PocosiaR3DMMGhostPlacement(PocosiaRaycast3DMouseMapperFeature base) : PocosiaRaycast3DMouseMapperFeature{base} {}
	constexpr PocosiaR3DMMGhostPlacement(uint64_t addr) : PocosiaRaycast3DMouseMapperFeature{addr} {}
	constexpr PocosiaR3DMMGhostPlacement(Object obj) : PocosiaR3DMMGhostPlacement{obj.address()} {}
	PocosiaR3DMMGhostPlacement(Variant variant) : PocosiaR3DMMGhostPlacement{variant.as_object().address()} {}


	PROPERTY(placement_ghost, Node3D);

	inline void on_ghost_placement_confirmed(Variant final_collision);
	inline void on_ghost_placement_cancelled();
	inline void begin_ghost_placement(Node3D new_placement_ghost, bool alter_material, StandardMaterial3D alter_material_override);
	inline int64_t on_right_pressed(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_left_pressed(Variant collision, InputEventMouseButton _event);
	inline int64_t on_mouse_hover(Variant collision, InputEventMouseMotion _event);
	inline void cancel_ghost_placement();
	inline void confirm_ghost_placement(Variant final_collision);
	inline void update_ghost_on_hover(Variant hover_collision);
	inline void make_node3d_as_ghost(Node3D ghost_subject3d, bool alter_material, StandardMaterial3D alter_material_override);
	inline int64_t on_right_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_left_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_middle_pressed(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_middle_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_box_select(Variant _colliders);
};


inline void PocosiaR3DMMGhostPlacement::on_ghost_placement_confirmed(Variant final_collision) { this->voidcall("on_ghost_placement_confirmed", final_collision); }
inline void PocosiaR3DMMGhostPlacement::on_ghost_placement_cancelled() { this->voidcall("on_ghost_placement_cancelled"); }
inline void PocosiaR3DMMGhostPlacement::begin_ghost_placement(Node3D new_placement_ghost, bool alter_material, StandardMaterial3D alter_material_override) { this->voidcall("begin_ghost_placement", new_placement_ghost, alter_material, alter_material_override); }
inline int64_t PocosiaR3DMMGhostPlacement::on_right_pressed(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_right_pressed", _collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_left_pressed(Variant collision, InputEventMouseButton _event) { return this->operator()("on_left_pressed", collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_mouse_hover(Variant collision, InputEventMouseMotion _event) { return this->operator()("on_mouse_hover", collision, _event); }
inline void PocosiaR3DMMGhostPlacement::cancel_ghost_placement() { this->voidcall("cancel_ghost_placement"); }
inline void PocosiaR3DMMGhostPlacement::confirm_ghost_placement(Variant final_collision) { this->voidcall("confirm_ghost_placement", final_collision); }
inline void PocosiaR3DMMGhostPlacement::update_ghost_on_hover(Variant hover_collision) { this->voidcall("update_ghost_on_hover", hover_collision); }
inline void PocosiaR3DMMGhostPlacement::make_node3d_as_ghost(Node3D ghost_subject3d, bool alter_material, StandardMaterial3D alter_material_override) { this->voidcall("make_node3d_as_ghost", ghost_subject3d, alter_material, alter_material_override); }
inline int64_t PocosiaR3DMMGhostPlacement::on_right_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_right_released", _collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_left_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_left_released", _collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_middle_pressed(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_middle_pressed", _collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_middle_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_middle_released", _collision, _event); }
inline int64_t PocosiaR3DMMGhostPlacement::on_box_select(Variant _colliders) { return this->operator()("on_box_select", _colliders); }

#endif
