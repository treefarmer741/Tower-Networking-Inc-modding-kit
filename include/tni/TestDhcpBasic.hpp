#ifndef TNI_API_HEADER_TESTDHCPBASIC
#define TNI_API_HEADER_TESTDHCPBASIC
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TestBase.hpp"

struct TestDhcpBasic : public TestBase {
	using TestBase::TestBase;

	constexpr TestDhcpBasic(TestBase base) : TestBase{base} {}
	constexpr TestDhcpBasic(uint64_t addr) : TestBase{addr} {}
	constexpr TestDhcpBasic(Object obj) : TestDhcpBasic{obj.address()} {}
	TestDhcpBasic(Variant variant) : TestDhcpBasic{variant.as_object().address()} {}

	inline static const String BOULDER = "/root/Main/GameWorld/DeviceSpawner/BoulderPlus";  // NOTE: You should recompile your mod if this value changes!
	inline static const String ICC1 = "/root/Main/GameWorld/DeviceSpawner/ICC1";  // NOTE: You should recompile your mod if this value changes!
	inline static const String ICC2 = "/root/Main/GameWorld/DeviceSpawner/ICC2";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(save_name, String);
	PROPERTY(is_ready, bool);

	inline void test_boulder_is_dhcp_server();
	inline void begin_setup();
	inline void teardown();
	inline void check(bool cond, String msg);
	inline Variant get_result_summary();
};


inline void TestDhcpBasic::test_boulder_is_dhcp_server() { this->voidcall("test_boulder_is_dhcp_server"); }
inline void TestDhcpBasic::begin_setup() { this->voidcall("begin_setup"); }
inline void TestDhcpBasic::teardown() { this->voidcall("teardown"); }
inline void TestDhcpBasic::check(bool cond, String msg) { this->voidcall("check", cond, msg); }
inline Variant TestDhcpBasic::get_result_summary() { return this->operator()("get_result_summary"); }

#endif
