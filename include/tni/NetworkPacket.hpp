#ifndef TNI_API_HEADER_NETWORKPACKET
#define TNI_API_HEADER_NETWORKPACKET
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NetworkPacket : public RefCounted {
	using RefCounted::RefCounted;

	constexpr NetworkPacket(RefCounted base) : RefCounted{base} {}
	constexpr NetworkPacket(uint64_t addr) : RefCounted{addr} {}
	constexpr NetworkPacket(Object obj) : NetworkPacket{obj.address()} {}
	NetworkPacket(Variant variant) : NetworkPacket{variant.as_object().address()} {}



	inline Variant create_simdict_npacket(LogicController lgctl, String traffic_class, int64_t traffic_weight, Variant dst_addr, int64_t ttl);
};

#include "LogicController.hpp"

inline Variant NetworkPacket::create_simdict_npacket(LogicController lgctl, String traffic_class, int64_t traffic_weight, Variant dst_addr, int64_t ttl) { return operator()("create_simdict_npacket", lgctl, traffic_class, traffic_weight, dst_addr, ttl); }

#endif
