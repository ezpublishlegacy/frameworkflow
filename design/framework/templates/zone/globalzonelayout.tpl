{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}
{/if}