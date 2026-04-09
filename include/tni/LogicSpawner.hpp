#ifndef TNI_API_HEADER_LOGICSPAWNER
#define TNI_API_HEADER_LOGICSPAWNER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LogicSpawner : public MultiplayerSpawner {
	using MultiplayerSpawner::MultiplayerSpawner;

	constexpr LogicSpawner(MultiplayerSpawner base) : MultiplayerSpawner{base} {}
	constexpr LogicSpawner(uint64_t addr) : MultiplayerSpawner{addr} {}
	constexpr LogicSpawner(Object obj) : LogicSpawner{obj.address()} {}
	LogicSpawner(Variant variant) : LogicSpawner{variant.as_object().address()} {}



};



#endif
