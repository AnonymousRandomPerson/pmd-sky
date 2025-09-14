#ifndef PMDSKY_SPECIAL_MOVE_TYPES_H
#define PMDSKY_SPECIAL_MOVE_TYPES_H

#include "dungeon_mode.h"

// Gets the relevant entry in NATURAL_GIFT_ITEM_TABLE based on the entity's held item, if possible.
const struct natural_gift_item_info* GetEntityNaturalGiftInfo(struct entity* entity);
// Gets the current Weather Ball type for the given entity, based on the apparent weather.
enum type_id GetEntityWeatherBallType(struct entity* entity);

#endif //PMDSKY_SPECIAL_MOVE_TYPES_H
