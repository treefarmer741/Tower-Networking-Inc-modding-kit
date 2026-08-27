#ifndef TNI_API_HEADER_TESTSUITE
#define TNI_API_HEADER_TESTSUITE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TestSuite : public Node {
	using Node::Node;

	constexpr TestSuite(Node base) : Node{base} {}
	constexpr TestSuite(uint64_t addr) : Node{addr} {}
	constexpr TestSuite(Object obj) : TestSuite{obj.address()} {}
	TestSuite(Variant variant) : TestSuite{variant.as_object().address()} {}



	inline void load_test(String save_name);
};


inline void TestSuite::load_test(String save_name) { this->voidcall("load_test", save_name); }

#endif
