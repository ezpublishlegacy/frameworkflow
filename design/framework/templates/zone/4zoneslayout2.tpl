{def $sidebar = false()
	 $bottomarea = false()
	 $has_bottomleft = and(is_set($zones[2].blocks), $zones[2].blocks|count())
	 $has_bottomright = and(is_set($zones[3].blocks), $zones[3].blocks|count())
}

{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{set-block variable='sidebar'}{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}{/set-block}
{/if}

{if and(is_set($zones[1].blocks), $zones[1].blocks|count())}
{include uri="design:parts/zoneblock.tpl" zone=$zones[0]}
{/if}

{if or($has_bottomleft, $has_bottom_right)}
{set-block variable='bottomarea'}
	{if $has_bottomleft}
	<div class="column">{include uri="design:parts/zoneblock.tpl" zone=$zones[2]}</div>
	{/if}
	{if $has_bottom_right}
	<div class="column">{include uri="design:parts/zoneblock.tpl" zone=$zones[3]}</div>
	{/if}
{/set-block}
{/if}

{pagedata_merge(hash('sidebar', $sidebar, 'bottomarea', $bottomarea), false(), true())}