#ifndef TNI_API_HEADER_ASYNCLOADER
#define TNI_API_HEADER_ASYNCLOADER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AsyncLoader : public Node {
	using Node::Node;

	constexpr AsyncLoader(Node base) : Node{base} {}
	constexpr AsyncLoader(uint64_t addr) : Node{addr} {}
	constexpr AsyncLoader(Object obj) : AsyncLoader{obj.address()} {}
	AsyncLoader(Variant variant) : AsyncLoader{variant.as_object().address()} {}


	PROPERTY(async_cache_queue, Variant);

	inline void begin_threaded_load(String respath, Variant done_callback);
	inline void queue_async_caching(String respath);
	inline void begin_async_caching(String respath);
	inline Resource recursive_caching_by_frame(String respath, int64_t max_depth, int64_t current_depth);
};


inline void AsyncLoader::begin_threaded_load(String respath, Variant done_callback) { voidcall("begin_threaded_load", respath, done_callback); }
inline void AsyncLoader::queue_async_caching(String respath) { voidcall("queue_async_caching", respath); }
inline void AsyncLoader::begin_async_caching(String respath) { voidcall("begin_async_caching", respath); }
inline Resource AsyncLoader::recursive_caching_by_frame(String respath, int64_t max_depth, int64_t current_depth) { return Resource(operator()("recursive_caching_by_frame", respath, max_depth, current_depth).as_object().address()); }

#endif
