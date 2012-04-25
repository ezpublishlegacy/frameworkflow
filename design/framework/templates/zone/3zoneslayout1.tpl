{def $extrainfo = false()
	 $bottomarea = false()
}

{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}
{/if}

{if and(is_set($zones[1].blocks), $zones[1].blocks|count())}
{set-block variable='extrainfo'}{include uri="design:parts/zoneblock.tpl" zone=$zones[1]}{/set-block}
{/if}

{if and(is_set($zones[2].blocks), $zones[2].blocks|count())}
{set-block variable='bottomarea'}{include uri="design:parts/zoneblock.tpl" zone=$zones[2]}{/set-block}
{/if}

{pagedata_merge(hash('sidebar', $sidebar, 'bottomarea', $bottomarea), false())}