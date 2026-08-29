#ifndef TNI_API_HEADER_TESTEXAMPLE
#define TNI_API_HEADER_TESTEXAMPLE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TestBase.hpp"

struct TestExample : public TestBase {
	using TestBase::TestBase;

	constexpr TestExample(TestBase base) : TestBase{base} {}
	constexpr TestExample(uint64_t addr) : TestBase{addr} {}
	constexpr TestExample(Object obj) : TestExample{obj.address()} {}
	TestExample(Variant variant) : TestExample{variant.as_object().address()} {}


	PROPERTY(save_name, String);
	PROPERTY(is_ready, bool);

	inline void test_example_property();
	inline void test_example_action();
	inline void begin_setup();
	inline void teardown();
	inline void check(bool cond, String msg);
	inline Variant get_result_summary();
};


inline void TestExample::test_example_property() { this->voidcall("test_example_property"); }
inline void TestExample::test_example_action() { this->voidcall("test_example_action"); }
inline void TestExample::begin_setup() { this->voidcall("begin_setup"); }
inline void TestExample::teardown() { this->voidcall("teardown"); }
inline void TestExample::check(bool cond, String msg) { this->voidcall("check", cond, msg); }
inline Variant TestExample::get_result_summary() { return this->operator()("get_result_summary"); }

#endif
