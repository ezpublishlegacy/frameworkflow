{def $has_header = and(is_set($block.name),ne($block.name,''))}
<nav class="column">
<ul class="menu vertical">
{foreach $block.valid_nodes as $item}
	<li><a href={$item|sitelink()}>{$item.name}</a></li>
{/foreach}
</ul>
</nav>