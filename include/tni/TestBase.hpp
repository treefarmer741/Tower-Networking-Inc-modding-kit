#ifndef TNI_API_HEADER_TESTBASE
#define TNI_API_HEADER_TESTBASE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TestBase : public Node {
	using Node::Node;

	constexpr TestBase(Node base) : Node{base} {}
	constexpr TestBase(uint64_t addr) : Node{addr} {}
	constexpr TestBase(Object obj) : TestBase{obj.address()} {}
	TestBase(Variant variant) : TestBase{variant.as_object().address()} {}


	PROPERTY(save_name, String);
	PROPERTY(is_ready, bool);

	inline void begin_setup();
	inline void teardown();
	inline void check(bool cond, String msg);
	inline Variant get_result_summary();
};


inline void TestBase::begin_setup() { this->voidcall("begin_setup"); }
inline void TestBase::teardown() { this->voidcall("teardown"); }
inline void TestBase::check(bool cond, String msg) { this->voidcall("check", cond, msg); }
inline Variant TestBase::get_result_summary() { return this->operator()("get_result_summary"); }

#endif
