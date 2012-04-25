{def $extrainfo = false()}

{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}
{/if}

{if and(is_set($zones[1].blocks), $zones[1].blocks|count())}
{set-block variable='extrainfo'}{include uri="design:parts/zoneblock.tpl" zone=$zones[1]}{/set-block}
{/if}

{pagedata_merge(hash('extrainfo', $extrainfo), false(), true())}