#ifndef TNI_API_HEADER_LOGICADDRESS
#define TNI_API_HEADER_LOGICADDRESS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicAddress : public Object {
	using Object::Object;

	constexpr LogicAddress(Object base) : Object{base} {}
	constexpr LogicAddress(uint64_t addr) : Object{addr} {}
	LogicAddress(Variant variant) : LogicAddress{variant.as_object().address()} {}

	static constexpr int64_t MAX_NADDR_CHARS = 15;  // NOTE: You should recompile your mod if this value changes!
	inline static const String BAD_COLOR = "A52A2A";  // NOTE: You should recompile your mod if this value changes!
	inline static const String EMPTY_COLOR = "778899";  // NOTE: You should recompile your mod if this value changes!
	inline static const String HW_COLOR = "00FA9A";  // NOTE: You should recompile your mod if this value changes!
	inline static const String FQDN_COLOR = "FFB6C1";  // NOTE: You should recompile your mod if this value changes!
	inline static const String NW_COLOR = "FF0565";  // NOTE: You should recompile your mod if this value changes!


	inline bool is_equivalent_addr(String addr1, String addr2);
	inline bool is_prefixed_with(String addr1, String prefix1);
	inline Variant get_addr_color_bbtag(String addr1);
	inline String colorize_addr(String addr1, int64_t fixed_width, String replace_empty_with, String empty_color, bool return_color_only);
	inline bool is_valid_laddr(String addr1);
	inline bool is_valid_netaddr(String addr1);
	inline bool is_valid_fqdn(Variant fqdn1);
};


inline bool LogicAddress::is_equivalent_addr(String addr1, String addr2) { return operator()("is_equivalent_addr", addr1, addr2); }
inline bool LogicAddress::is_prefixed_with(String addr1, String prefix1) { return operator()("is_prefixed_with", addr1, prefix1); }
inline Variant LogicAddress::get_addr_color_bbtag(String addr1) { return operator()("get_addr_color_bbtag", addr1); }
inline String LogicAddress::colorize_addr(String addr1, int64_t fixed_width, String replace_empty_with, String empty_color, bool return_color_only) { return operator()("colorize_addr", addr1, fixed_width, replace_empty_with, empty_color, return_color_only); }
inline bool LogicAddress::is_valid_laddr(String addr1) { return operator()("is_valid_laddr", addr1); }
inline bool LogicAddress::is_valid_netaddr(String addr1) { return operator()("is_valid_netaddr", addr1); }
inline bool LogicAddress::is_valid_fqdn(Variant fqdn1) { return operator()("is_valid_fqdn", fqdn1); }

#endif
