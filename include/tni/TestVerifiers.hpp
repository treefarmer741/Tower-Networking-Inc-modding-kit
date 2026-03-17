#ifndef TNI_API_HEADER_TESTVERIFIERS
#define TNI_API_HEADER_TESTVERIFIERS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TestVerifiers : public Node {
	using Node::Node;

	constexpr TestVerifiers(Node base) : Node{base} {}
	constexpr TestVerifiers(uint64_t addr) : Node{addr} {}
	constexpr TestVerifiers(Object obj) : TestVerifiers{obj.address()} {}
	TestVerifiers(Variant variant) : TestVerifiers{variant.as_object().address()} {}



	inline void verify_logicas(GameWorld game_world);
};

#include "GameWorld.hpp"

inline void TestVerifiers::verify_logicas(GameWorld game_world) { voidcall("verify_logicas", game_world); }

#endif
