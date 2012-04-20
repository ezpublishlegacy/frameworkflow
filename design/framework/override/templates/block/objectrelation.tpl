{def $has_header = and(is_set($block.name),ne($block.name,''))}
<{cond($has_header,'section','div')} class="module zoneblock zone-block-objectrelation">
{if $has_header}	<header><h1>{$block.name|wash()}</h1></header>{/if}
	<div class="zoneblock-link">
		<a href={$block.custom_attributes.node_id|sitelink()}{if $block.custom_attributes.link_type_button} class="button"{/if}>{$block.custom_attributes.link_text|wash()}</a>
	</div>
</{cond($has_header,'section','div')}>