#ifndef TNI_API_HEADER_GAMESTATISTICS
#define TNI_API_HEADER_GAMESTATISTICS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameStatistics : public RefCounted {
	using RefCounted::RefCounted;

	constexpr GameStatistics(RefCounted base) : RefCounted{base} {}
	constexpr GameStatistics(uint64_t addr) : RefCounted{addr} {}
	constexpr GameStatistics(Object obj) : GameStatistics{obj.address()} {}
	GameStatistics(Variant variant) : GameStatistics{variant.as_object().address()} {}

	enum Stat : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		TOTAL_SERVICE_FLOORS = 0,
		TOTAL_DATACENTERS = 1,
		TOTAL_USERS = 2,
		USER_MAJORITY = 3,
		DAILY_SAT_AVG = 4,
		DAILY_INCOME_AVG = 5,
		TOTAL_SCHEDULED_OUTAGES_EXP = 6,
		TOTAL_UNSCHEDULED_OUTAGES_EXP = 7,
		TOTAL_SURGES_EXP = 8,
		TOTAL_DEVS_FAILED = 9,
		TOTAL_LOANS_TAKEN = 10,
		TOTAL_DAYS_IN_DEBT = 11,
		TOTAL_PROPOSALS_SUBMITTED = 12,
		TOTAL_COFFEE_DRANK = 13,
		TOTAL_TEA_DRANK = 14,
		TOTAL_NETWORK_OUTAGES_SCHEDULED = 15,
		TOTAL_DEVS_SURGED = 16,
		TOTAL_CYBERATTACKS_ENCOUNTERED = 17,
	};
	enum Inte : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		CUMUSAT = 0,
	};

	PROPERTY(data, Variant);

	inline void add_stat(Variant k, int64_t val);
	inline Variant ggs(Variant k);
	inline void daily_stat_update(GameWorld gw);
	inline void update_stats(GameWorld gw);
};

#include "GameWorld.hpp"

inline void GameStatistics::add_stat(Variant k, int64_t val) { voidcall("add_stat", k, val); }
inline Variant GameStatistics::ggs(Variant k) { return operator()("ggs", k); }
inline void GameStatistics::daily_stat_update(GameWorld gw) { voidcall("daily_stat_update", gw); }
inline void GameStatistics::update_stats(GameWorld gw) { voidcall("update_stats", gw); }

#endif
