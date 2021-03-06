{**
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or (at
 *   your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful, but
 *   WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *   General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 *
 *   @author			Matthias Glienke
 *   @copyright			2019, Black Cat Development
 *   @link				https://blackcat-cms.org
 *   @license			http://www.gnu.org/licenses/gpl.html
 *   @category			CAT_Modules
 *   @package			catGallery
 *
 *}
{if $countImg}
<script type="text/javascript">
	if (typeof cG_hS === 'undefined')
	\{
		cG_hS	= [];
	}
	cG_hS.push(
	\{
		'cG_id'			: {$gallery_id},
		'interval'		: {if $options.interval}{$options.interval}{else}5000{/if}
	});
</script>
<section id="cG_hS_{$gallery_id}" class="cG_hS">
	{foreach $images image}{if $image.published}<figure style="background-image:url({$image.original});"><img src="{$imgURL}{$image.picture}" width="{$options.resize_x}" height="{$options.resize_y}" alt="{$image.options.alt}">{if $image.image_content != ''}<figcaption class="cG_hS_cont{if $options.960grid} cG_960{/if}">{$image.image_content}</figcaption>{/if}</figure>{/if}{/foreach}
	{if $options.showArrow}<span></span>{/if}
</section>
{else}{include('../default/view_no_image.tpl')}{/if}