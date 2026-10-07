#ifndef TNI_API_HEADER_SECRETARIATCREDITCONTROLLER
#define TNI_API_HEADER_SECRETARIATCREDITCONTROLLER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SecretariatCreditController : public Node {
	using Node::Node;

	constexpr SecretariatCreditController(Node base) : Node{base} {}
	constexpr SecretariatCreditController(uint64_t addr) : Node{addr} {}
	constexpr SecretariatCreditController(Object obj) : SecretariatCreditController{obj.address()} {}
	SecretariatCreditController(Variant variant) : SecretariatCreditController{variant.as_object().address()} {}

	inline static const String BEHAVIOR_KEY = "profile-user-behavior";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(secretariat_credit, int64_t);
	PROPERTY(behavior_per_credit, int64_t);

	inline void add_secretariat_credit(int64_t amount);
	inline int64_t drain_behavior_data(Variant drain_devpaths, int64_t needed);
};


inline void SecretariatCreditController::add_secretariat_credit(int64_t amount) { this->voidcall("add_secretariat_credit", amount); }
inline int64_t SecretariatCreditController::drain_behavior_data(Variant drain_devpaths, int64_t needed) { return this->operator()("drain_behavior_data", drain_devpaths, needed); }

#endif
