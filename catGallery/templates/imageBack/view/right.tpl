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

<article class="cG_imgR{if $image.options.backColor} cG_iBColor{/if}" {if $image.options.backColor}style="background-color:#{$image.options.backColor}"{/if}>
	<figure class="cG_imgR-IMG">
		{if $image.options.pdf}<a href="{cat_url}/media/downloads/{$image.options.pdf}">{/if}<img src="{$imgURL}{$image.picture}" alt="{$image.options.alt}">{if $image.options.pdf}</a>{/if}
		<figcaption class="cG_imgR-content">
			{if $image.options.title}<h2>{$image.options.title}</h2>{/if}
			{$image.image_content}
		</figcaption>
	</figure>
</article>