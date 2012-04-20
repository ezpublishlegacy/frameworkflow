{def $has_header = and(is_set($block.name),ne($block.name,''))}
<{cond($has_header,'section','div')} class="module zoneblock zone-block-related">
{if $has_header}	<header><h1>{$block.name|wash()}</h1></header>{/if}
	<div class="zoneblock-content view-item-list">
	{foreach $block.valid_nodes as $item}
		{node_view_gui view='listitem' content_node=$item htmlshorten=array(80,concat('... <a href="',$item|sitelink('no'),'">More</a>'))}
		{delimiter}{include uri="design:content/datatype/view/ezxmltags/separator.tpl"}{/delimiter}
	{/foreach}
	</div>
</{cond($has_header,'section','div')}>
