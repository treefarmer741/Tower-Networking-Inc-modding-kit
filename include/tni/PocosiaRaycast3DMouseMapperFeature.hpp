#ifndef TNI_API_HEADER_POCOSIARAYCAST3DMOUSEMAPPERFEATURE
#define TNI_API_HEADER_POCOSIARAYCAST3DMOUSEMAPPERFEATURE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PocosiaRaycast3DMouseMapperFeature : public Node {
	using Node::Node;

	constexpr PocosiaRaycast3DMouseMapperFeature(Node base) : Node{base} {}
	constexpr PocosiaRaycast3DMouseMapperFeature(uint64_t addr) : Node{addr} {}
	constexpr PocosiaRaycast3DMouseMapperFeature(Object obj) : PocosiaRaycast3DMouseMapperFeature{obj.address()} {}
	PocosiaRaycast3DMouseMapperFeature(Variant variant) : PocosiaRaycast3DMouseMapperFeature{variant.as_object().address()} {}

	enum struct Result : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		BREAK = 0,
		PASS = 1,
	};


	inline int64_t on_right_pressed(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_right_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_left_pressed(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_left_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_middle_pressed(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_middle_released(Variant _collision, InputEventMouseButton _event);
	inline int64_t on_mouse_hover(Variant _collision, InputEventMouseMotion _event);
	inline int64_t on_box_select(Variant _colliders);
};


inline int64_t PocosiaRaycast3DMouseMapperFeature::on_right_pressed(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_right_pressed", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_right_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_right_released", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_left_pressed(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_left_pressed", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_left_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_left_released", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_middle_pressed(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_middle_pressed", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_middle_released(Variant _collision, InputEventMouseButton _event) { return this->operator()("on_middle_released", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_mouse_hover(Variant _collision, InputEventMouseMotion _event) { return this->operator()("on_mouse_hover", _collision, _event); }
inline int64_t PocosiaRaycast3DMouseMapperFeature::on_box_select(Variant _colliders) { return this->operator()("on_box_select", _colliders); }

#endif
