#ifndef TNI_API_HEADER_MODFILESYSTEM
#define TNI_API_HEADER_MODFILESYSTEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <optional>
#include <api.hpp>
#include "structs.hpp"

struct ModFileSystem : public Node {
	using Node::Node;

	constexpr ModFileSystem(Node base) : Node{base} {}
	constexpr ModFileSystem(uint64_t addr) : Node{addr} {}
	constexpr ModFileSystem(Object obj) : ModFileSystem{obj.address()} {}
	ModFileSystem(Variant variant) : ModFileSystem{variant.as_object().address()} {}


	PROPERTY(mod, Mod);
	PROPERTY(last_open_error, int64_t);

	inline String mod_path_to_real(String path);
	inline std::optional<ModFileAccess> open(String mod_path, int64_t flags);
	inline PackedArray<std::string> get_directories_at(String mod_path);
	inline PackedArray<std::string> get_files_at(String mod_path);
	inline int64_t get_open_error();
};

#include "Mod.hpp"
#include "ModFileAccess.hpp"

inline String ModFileSystem::mod_path_to_real(String path) { return operator()("mod_path_to_real", path); }
inline std::optional<ModFileAccess> ModFileSystem::open(String mod_path, int64_t flags) { Variant value = operator()("open", mod_path, flags); return value == Nil ? std::nullopt : std::optional(ModFileAccess(value.as_object().address())); }
inline PackedArray<std::string> ModFileSystem::get_directories_at(String mod_path) { return operator()("get_directories_at", mod_path); }
inline PackedArray<std::string> ModFileSystem::get_files_at(String mod_path) { return operator()("get_files_at", mod_path); }
inline int64_t ModFileSystem::get_open_error() { return operator()("get_open_error"); }

#endif
