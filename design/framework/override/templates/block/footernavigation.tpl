{def $node = fetch('content','node',hash('node_id',$block.custom_attributes.node_id))
	 $list = fetch('content', 'list', hash('parent_node_id',$node.node_id,
						'limit', cond(ne($block.custom_attributes.limit,''),$block.custom_attributes.limit,5),
						'sort_by', $node.sort_array))
	 $has_header = and(is_set($block.name),ne($block.name,''))
}
<nav class="column{if $has_header} has-header{/if}">
{if $has_header}<h2><a href={$node|sitelink()}>{$block.name|wash()}</a></h2>{/if}
<ul class="menu vertical">
	{foreach $list as $item}
		<li><a href={$item|sitelink()}>{$item.name}</a></li>
	{/foreach}
</ul>
</nav>