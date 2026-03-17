#ifndef TNI_API_HEADER_GAMEMESSAGE
#define TNI_API_HEADER_GAMEMESSAGE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameMessage : public Object {
	using Object::Object;

	constexpr GameMessage(Object base) : Object{base} {}
	constexpr GameMessage(uint64_t addr) : Object{addr} {}
	GameMessage(Variant variant) : GameMessage{variant.as_object().address()} {}


	PROPERTY(msgid, int64_t);
	PROPERTY(title, String);
	PROPERTY(content, String);
	PROPERTY(date, int64_t);
	PROPERTY(read, int64_t);

	inline String serialize();
	inline GameMessage from_json(String jsonstr);
};

#include "GameMessage.hpp"

inline String GameMessage::serialize() { return operator()("serialize"); }
inline GameMessage GameMessage::from_json(String jsonstr) { return GameMessage(operator()("from_json", jsonstr).as_object().address()); }

#endif
