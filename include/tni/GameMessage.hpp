#ifndef TNI_API_HEADER_GAMEMESSAGE
#define TNI_API_HEADER_GAMEMESSAGE
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct GameMessage : public Object {
	using Object::Object;

	constexpr GameMessage(Object base) : Object{base} {}
	constexpr GameMessage(uint64_t addr) : Object{addr} {}
	GameMessage(Variant variant) : GameMessage{variant.as_object().address()} {}

	enum struct EventKind : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NONE = 0,
		POWER_OUTAGE = 1,
		POWER_SURGE = 2,
		WORM_ATTACK = 3,
		COORDINATED_ATTACK = 4,
		DEBT_DEADLINE = 5,
		SLA_WARNING = 6,
	};

	PROPERTY(msgid, int64_t);
	PROPERTY(title, String);
	PROPERTY(content, String);
	PROPERTY(date, int64_t);
	PROPERTY(read, int64_t);
	PROPERTY(event_kind, int64_t);
	PROPERTY(event_at, double);

	inline String serialize();
	inline GameMessage from_json(String jsonstr);
};

#include "GameMessage.hpp"

inline String GameMessage::serialize() { return this->operator()("serialize"); }
inline GameMessage GameMessage::from_json(String jsonstr) { return GameMessage(this->operator()("from_json", jsonstr).as_object().address()); }

#endif
