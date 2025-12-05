#ifndef TN_API_HEADER_MODFILESYSTEM
#define TN_API_HEADER_MODFILESYSTEM

#include <api.hpp>

struct ModFileSystem : public Node {
	using Node::Node;

	ModFileSystem(Variant variant) : ModFileSystem{variant.as_object().address()} {}

	PROPERTY(mod, Variant);
	PROPERTY(last_open_error, int64_t);

	inline String mod_path_to_real(String path) { return operator()("mod_path_to_real", path); }
	inline Variant open(String mod_path, int64_t flags) { return operator()("open", mod_path, flags); }
	inline Variant get_directories_at(String mod_path) { return operator()("get_directories_at", mod_path); }
	inline Variant get_files_at(String mod_path) { return operator()("get_files_at", mod_path); }
	inline int64_t get_open_error() { return operator()("get_open_error"); }
};

#endif
