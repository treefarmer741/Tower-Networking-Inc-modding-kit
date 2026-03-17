#ifndef TNI_API_HEADER_NODEUTILS
#define TNI_API_HEADER_NODEUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NodeUtils : public Object {
	using Object::Object;

	constexpr NodeUtils(Object base) : Object{base} {}
	constexpr NodeUtils(uint64_t addr) : Object{addr} {}
	NodeUtils(Variant variant) : NodeUtils{variant.as_object().address()} {}



	inline String get_class_name(GDScript script);
	inline Node get_node_or_null(Node parent, NodePath nodepath, String ensure_native_type);
	inline NodePath get_node_path(Variant inv);
	inline Node init_and_ensure_packed_scene_type(PackedScene ps, GDScript ntype);
	inline void clear_and_free_children(Node parent);
	inline void recursive_free(Node target);
	inline Node get_parent_by_type(Node child, Variant test_func, Variant ensure_found);
	inline Node get_child_by_native_type(Node parent, String ntype, bool ensure_at_least_one, bool ensure_at_most_one);
	inline Node get_child_by_type(Node parent, Variant test_func, bool ensure_at_least_one, bool ensure_at_most_one);
	inline Variant rfind_children(Node parent, Variant test_func);
	inline Variant get_bounding_rect_of_sprite2d_children(Node2D n);
};


inline String NodeUtils::get_class_name(GDScript script) { return operator()("get_class_name", script); }
inline Node NodeUtils::get_node_or_null(Node parent, NodePath nodepath, String ensure_native_type) { return Node(operator()("get_node_or_null", parent, nodepath, ensure_native_type).as_object().address()); }
inline NodePath NodeUtils::get_node_path(Variant inv) { return operator()("get_node_path", inv); }
inline Node NodeUtils::init_and_ensure_packed_scene_type(PackedScene ps, GDScript ntype) { return Node(operator()("init_and_ensure_packed_scene_type", ps, ntype).as_object().address()); }
inline void NodeUtils::clear_and_free_children(Node parent) { voidcall("clear_and_free_children", parent); }
inline void NodeUtils::recursive_free(Node target) { voidcall("recursive_free", target); }
inline Node NodeUtils::get_parent_by_type(Node child, Variant test_func, Variant ensure_found) { return Node(operator()("get_parent_by_type", child, test_func, ensure_found).as_object().address()); }
inline Node NodeUtils::get_child_by_native_type(Node parent, String ntype, bool ensure_at_least_one, bool ensure_at_most_one) { return Node(operator()("get_child_by_native_type", parent, ntype, ensure_at_least_one, ensure_at_most_one).as_object().address()); }
inline Node NodeUtils::get_child_by_type(Node parent, Variant test_func, bool ensure_at_least_one, bool ensure_at_most_one) { return Node(operator()("get_child_by_type", parent, test_func, ensure_at_least_one, ensure_at_most_one).as_object().address()); }
inline Variant NodeUtils::rfind_children(Node parent, Variant test_func) { return operator()("rfind_children", parent, test_func); }
inline Variant NodeUtils::get_bounding_rect_of_sprite2d_children(Node2D n) { return operator()("get_bounding_rect_of_sprite2d_children", n); }

#endif
