#ifndef TNI_API_HEADER_USERUNLOCKFQDNCONDITION
#define TNI_API_HEADER_USERUNLOCKFQDNCONDITION
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserUnlockFQDNCondition : public Resource {
	using Resource::Resource;

	constexpr UserUnlockFQDNCondition(Resource base) : Resource{base} {}
	constexpr UserUnlockFQDNCondition(uint64_t addr) : Resource{addr} {}
	constexpr UserUnlockFQDNCondition(Object obj) : UserUnlockFQDNCondition{obj.address()} {}
	UserUnlockFQDNCondition(Variant variant) : UserUnlockFQDNCondition{variant.as_object().address()} {}


	PROPERTY(required_user_scene, PackedScene);
	PROPERTY(fqdn_node_path, NodePath);

};



#endif
