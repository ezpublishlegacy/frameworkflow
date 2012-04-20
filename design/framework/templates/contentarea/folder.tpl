{if eq( ezini( 'folder', 'SummaryInFullView', 'content.ini' ), 'enabled' )}
	{if $node.object.data_map.short_description.has_content}<div class="attribute-short">{attribute_view_gui attribute=$node.data_map.short_description}</div>{/if}
{/if}
{if $node.data_map.description.has_content}
	<div class="">{attribute_view_gui attribute=$node.data_map.description}</div>
{/if}