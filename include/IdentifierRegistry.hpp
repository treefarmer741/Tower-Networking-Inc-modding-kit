#ifndef TNI_API_HEADER_IDENTIFIERREGISTRY
#define TNI_API_HEADER_IDENTIFIERREGISTRY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct IdentifierRegistry : public Node {
	using Node::Node;

	constexpr IdentifierRegistry(Node base) : Node{base} {}
	constexpr IdentifierRegistry(uint64_t addr) : Node{addr} {}
	constexpr IdentifierRegistry(Object obj) : IdentifierRegistry{obj.address()} {}
	IdentifierRegistry(Variant variant) : IdentifierRegistry{variant.as_object().address()} {}

	static constexpr int64_t MAX_HW_ADDR = 100000;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t DHCP_LEN = 4;  // NOTE: You should recompile your mod if this value changes!


	inline void clear_all();
	inline void reserve_hwaddress(Variant addr, NodePath requestor);
	inline void unreserve_hwaddress(Variant test_addr, NodePath requestor);
	inline void unreserve_username(Variant test_name, NodePath requestor);
	inline void reserve_netaddress(Variant addr, Variant requestor);
	inline void release_netaddress(Variant requestor);
	inline void reserve_username(Variant username, NodePath requestor);
	inline Variant get_unique_netaddr(Variant _requestor, String prefix);
	inline Variant get_unique_username();
	inline Variant get_unique_hwaddress();
	inline void get_unique_numerical_address(Variant _registry);
	inline void get_unique_alphabet_address(Variant _registry, String prefix);
	inline Variant get_unique_identity(Variant _registry);
};


inline void IdentifierRegistry::clear_all() { voidcall("clear_all"); }
inline void IdentifierRegistry::reserve_hwaddress(Variant addr, NodePath requestor) { voidcall("reserve_hwaddress", addr, requestor); }
inline void IdentifierRegistry::unreserve_hwaddress(Variant test_addr, NodePath requestor) { voidcall("unreserve_hwaddress", test_addr, requestor); }
inline void IdentifierRegistry::unreserve_username(Variant test_name, NodePath requestor) { voidcall("unreserve_username", test_name, requestor); }
inline void IdentifierRegistry::reserve_netaddress(Variant addr, Variant requestor) { voidcall("reserve_netaddress", addr, requestor); }
inline void IdentifierRegistry::release_netaddress(Variant requestor) { voidcall("release_netaddress", requestor); }
inline void IdentifierRegistry::reserve_username(Variant username, NodePath requestor) { voidcall("reserve_username", username, requestor); }
inline Variant IdentifierRegistry::get_unique_netaddr(Variant _requestor, String prefix) { return operator()("get_unique_netaddr", _requestor, prefix); }
inline Variant IdentifierRegistry::get_unique_username() { return operator()("get_unique_username"); }
inline Variant IdentifierRegistry::get_unique_hwaddress() { return operator()("get_unique_hwaddress"); }
inline void IdentifierRegistry::get_unique_numerical_address(Variant _registry) { voidcall("get_unique_numerical_address", _registry); }
inline void IdentifierRegistry::get_unique_alphabet_address(Variant _registry, String prefix) { voidcall("get_unique_alphabet_address", _registry, prefix); }
inline Variant IdentifierRegistry::get_unique_identity(Variant _registry) { return operator()("get_unique_identity", _registry); }

#endif
