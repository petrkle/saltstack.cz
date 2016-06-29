{$envelope.hlavicka}
<div class="content">
{include file="form.tpl"}
{foreach from=$vysledky key=cislo item=vysledek}
<h2><a href="{$vysledek.url}">{$vysledek.title}</a></h2>
<p>{$vysledek.snip}</p>
{/foreach}
</div>
{$envelope.paticka}
