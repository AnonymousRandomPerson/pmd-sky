#include "overlay_29_022F73B4.h"
#include "dungeon.h"
#include "util.h"

extern struct dungeon *DUNGEON_PTR[];

bool32 FloorNumberIsEven() {
    struct dungeon *dungeon = DUNGEON_PTR[0];
    if (dungeon->id == DUNGEON_LABYRINTH_CAVE && dungeon->floor == 10) return 0;
    return (dungeon->floor & 1) == 0;
}
