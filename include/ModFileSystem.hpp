#ifndef TN_API_HEADER_MODFILESYSTEM
#define TN_API_HEADER_MODFILESYSTEM

#include <api.hpp>

struct ModFileSystem : public Node {
	using Node::Node;

	ModFileSystem(Variant variant) : ModFileSystem{variant.as_object().address()} {}

	PROPERTY(mod, Variant);
	PROPERTY(last_open_error, int64_t);

	inline Variant open(String path, int64_t flags) { return operator()("open", path, flags); }
	inline int64_t get_open_error() { return operator()("get_open_error"); }
};

#endif
