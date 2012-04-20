{def $node = fetch('content','node',hash('node_id',$block.custom_attributes.node_id))
	 $dataNodes = fetch('content', 'list', hash('parent_node_id',$node.node_id,
						'limit', cond(ne($block.custom_attributes.limit,''),$block.custom_attributes.limit,5),
						'sort_by', $node.sort_array))
	 $has_header = and(is_set($block.name),ne($block.name,''))
}
<{cond($has_header,'section','div')} class="module zoneblock zone-block-listedsubitems">
{if $has_header}	<header><h1>{$block.name|wash()}</h1></header>{/if}
	<div class="zoneblock-content view-item-list">
	{foreach $dataNodes as $subitem}
		{node_view_gui view='listitem' content_node=$subitem htmlshorten=array(80,concat('... <a href="',$subitem|sitelink('no'),'">More</a>'))}
		{delimiter}{include uri="design:content/datatype/view/ezxmltags/separator.tpl"}{/delimiter}
	{/foreach}
	</div>
	<div class="zoneblock-link"><a class="button" href={$node|sitelink()} title="View All">View All</a></div>
</{cond($has_header,'section','div')}>

