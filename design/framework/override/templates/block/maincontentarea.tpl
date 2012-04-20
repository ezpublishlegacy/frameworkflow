{def $has_header = and(is_set($block.name),ne($block.name,''))}
<{cond($has_header,'section','div')} class="module zoneblock zone-block-maincontentarea">
{if $has_header}	<header><h1>{$block.name|wash()}</h1></header>{/if}
	<div class="zoneblock-content">
{include uri=concat('design:contentarea/',$#node.class_identifier,'.tpl') node=$#node}
	</div>
</{cond($has_header,'section','div')}>