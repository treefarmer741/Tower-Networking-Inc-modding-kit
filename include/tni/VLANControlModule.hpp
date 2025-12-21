#ifndef TNI_API_HEADER_VLANCONTROLMODULE
#define TNI_API_HEADER_VLANCONTROLMODULE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VLANControlModule : public Node {
	using Node::Node;

	constexpr VLANControlModule(Node base) : Node{base} {}
	constexpr VLANControlModule(uint64_t addr) : Node{addr} {}
	constexpr VLANControlModule(Object obj) : VLANControlModule{obj.address()} {}
	VLANControlModule(Variant variant) : VLANControlModule{variant.as_object().address()} {}

	static constexpr int64_t MAX_VLANTAG_CHARS = 10;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(vlan_port_tags, Variant);
	PROPERTY(host_controller, LogicController);

	inline Variant is_valid_vlan_tag(String vlan_cand);
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void add_port_tag(String portid, String tag);
	inline void remove_port_tag(String portid, String tag);
	inline void clear_all_tags();
	inline Variant get_save_var_list();
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
};

#include "LogicController.hpp"

inline Variant VLANControlModule::is_valid_vlan_tag(String vlan_cand) { return operator()("is_valid_vlan_tag", vlan_cand); }
inline String VLANControlModule::get_configstr() { return operator()("get_configstr"); }
inline void VLANControlModule::set_with_configstr(String cfgs) { voidcall("set_with_configstr", cfgs); }
inline void VLANControlModule::add_port_tag(String portid, String tag) { voidcall("add_port_tag", portid, tag); }
inline void VLANControlModule::remove_port_tag(String portid, String tag) { voidcall("remove_port_tag", portid, tag); }
inline void VLANControlModule::clear_all_tags() { voidcall("clear_all_tags"); }
inline Variant VLANControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline void VLANControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void VLANControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }

#endif
