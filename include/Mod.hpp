#ifndef TN_API_HEADER_MOD
#define TN_API_HEADER_MOD

#include <api.hpp>
#include "ModApiV1.hpp"


struct Mod : public Node {
	using Node::Node;

	PROPERTY(mod_entry_binary, String);
	PROPERTY(mod_dir, String);
	PROPERTY(mod_type, String);

	Object _instance_from_id(int64_t id) { return this->call("_instance_from_id", id).as_object(); }

	ModApiV1 get_api_v1() { return this->call("get_api_v1").as_node(); }
};

#endif