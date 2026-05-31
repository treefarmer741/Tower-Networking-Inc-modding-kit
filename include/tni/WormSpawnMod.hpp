#ifndef TNI_API_HEADER_WORMSPAWNMOD
#define TNI_API_HEADER_WORMSPAWNMOD
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct WormSpawnMod : public Node {
	using Node::Node;

	constexpr WormSpawnMod(Node base) : Node{base} {}
	constexpr WormSpawnMod(uint64_t addr) : Node{addr} {}
	constexpr WormSpawnMod(Object obj) : WormSpawnMod{obj.address()} {}
	WormSpawnMod(Variant variant) : WormSpawnMod{variant.as_object().address()} {}


	PROPERTY(start_ts, int64_t);
	PROPERTY(end_ts, int64_t);
	PROPERTY(worm_path, String);
	PROPERTY(userlc, LogicController);
	PROPERTY(orirn, String);

};

#include "LogicController.hpp"


#endif
