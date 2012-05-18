{def $toparea = false()
	 $has_right_column = and(is_set($zones[2].blocks), $zones[2].blocks|count())
}

{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{set-block variable='toparea'}{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}{/set-block}
{/if}

{if and(is_set($zones[1].blocks), $zones[1].blocks|count())}
<div class="column{if $has_right_column} left{/if}">{include uri="design:parts/zoneblock.tpl" zone=$zones[1]}</div>
{/if}

{if $has_right_column}
<div class="column right">{include uri="design:parts/zoneblock.tpl" zone=$zones[2]}</div>
{/if}

{pagedata_merge(hash('toparea', $toparea), false())}
