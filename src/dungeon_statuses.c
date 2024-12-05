#include "dungeon_statuses.h"
#include "dungeon_util.h"
#include "overlay_29_02315118.h"

extern bool8 ItemIsActive__0231513C(struct entity *entity, enum item_id item_id);

bool8 IsBlinded(struct entity *entity, bool8 check_held_item)
{
    if (EntityIsValid__02315118(entity))
    {
        struct monster *pokemon_info = GetEntInfo(entity);
        if (pokemon_info->blinker_class_status.blinded == BLINKER_STATUS_BLINKER ||
            check_held_item && !pokemon_info->is_team_leader && ItemIsActive__0231513C(entity, ITEM_Y_RAY_SPECS))
            return TRUE;
    }
    return FALSE;
}