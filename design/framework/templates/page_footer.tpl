{def $footer_node=get_footer()}
<footer>
	{if $footer_node.data_map.layout.has_content}<div id="footer-navigation">{attribute_view_gui attribute=$footer_node.data_map.layout}</div>{/if}
{if $footer_node.data_map.content.has_content}
	<div id="footer-content">{attribute_view_gui attribute=$footer_node.data_map.content}</div>
{/if}
{if and(is_set($footer_node.data_map.copyright),$footer_node.data_map.copyright.has_content)}
	<div id="copyright">{attribute_view_gui attribute=$footer_node.data_map.copyright}</div>
{else}
	<div id="copyright">Copyright &copy; {$pagedata.copyright_span} {$site.title}. All rights reserved.</div>
{/if}
</footer>
{include uri="design:page/footer_scripts.tpl"}