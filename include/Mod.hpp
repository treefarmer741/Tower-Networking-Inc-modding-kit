#ifndef TN_API_HEADER_MOD
#define TN_API_HEADER_MOD

#include <api.hpp>
#include "ModApiV1.hpp"


struct Mod : public Node {
	using Node::Node;

	PROPERTY(mod_entry_binary, String);
	PROPERTY(mod_dir, String);
	PROPERTY(mod_type, String);

	Object instance_from_id_(int64_t id) {
		Variant v = this->call("instance_from_id_", id);
		// If it's `Nil`, use a `0` address for the object instead.
		// `obj.is_valid()` is easier to work with than a Variant, since we know it's either Nil or Object and no other variant.
		if (v.get_type() == Variant::Type::NIL) {
			return Object(0);
		}
		return v.as_object();
	}

	ModApiV1 get_api_v1() { return this->call("get_api_v1").as_node(); }
};

#endif