{def $sidebar=false()}
{if and(is_set($zones[0].blocks), $zones[0].blocks|count())}
{set-block variable='sidebar'}
{foreach $zones[0].blocks as $block}
{if or($block.valid_nodes|count(), 
	and(is_set($block.custom_attributes), $block.custom_attributes|count()), 
	and(eq(ezini($block.type, 'ManualAddingOfItems', 'block.ini'), 'disabled'), ezini_hasvariable($block.type, 'FetchClass', 'block.ini')|not()))}
	{block_view_gui block=$block}
{else}
	{skip}
{/if}
	{delimiter}
		<div class="block-separator"></div>
	{/delimiter}
{/foreach}
{/set-block}
{/if}

{if and(is_set($zones[1].blocks), $zones[1].blocks|count())}
{foreach $zones[1].blocks as $block}
{if or($block.valid_nodes|count(), 
	and(is_set($block.custom_attributes), $block.custom_attributes|count()), 
	and(eq(ezini($block.type, 'ManualAddingOfItems', 'block.ini'), 'disabled'), ezini_hasvariable($block.type, 'FetchClass', 'block.ini')|not()))}
	{block_view_gui block=$block}
{else}
	{skip}
{/if}
	{delimiter}
		<div class="block-separator"></div>
	{/delimiter}
{/foreach}
{/if}
{pagedata_merge(hash('sidebar',$sidebar),false(),true())}