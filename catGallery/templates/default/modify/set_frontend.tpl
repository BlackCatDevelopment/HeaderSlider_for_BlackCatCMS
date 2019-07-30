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


<form action="{$CAT_URL}/modules/cc_catgallery/save.php" method="post" class="ajaxForm">
	<input type="hidden" name="page_id" value="{$page_id}">
	<input type="hidden" name="section_id" value="{$section_id}">
	<input type="hidden" name="gallery_id" value="{$gallery_id}">
	<input type="hidden" name="action" value="saveOptions">
	<input type="hidden" name="_cat_ajax" value="1">
	<input type="hidden" name="options" value="effect,animSpeed,pauseTime,random,label,progressbar,auto_play,stop_over,navigation,numbers,thumbs,controls,dots,velocity">
	<input type="hidden" name="image_options" value="alt">
	<span class="cc_In200px">{translate('Kind of animation')}:</span>
	<select name="effect">
		<option value="0"{if !$options.effect} selected="selected"{/if}>{translate('No effect selected...')}</option>
		{foreach $effects as option}
		<option value="{$option}"{if $options.effect == $option} selected="selected"{/if}>{$option}</option>
		{/foreach}
	</select><br/>
	<span class="cc_In200px">{translate('Velocity')}:</span>
	<input type="text" class="cc_In100px" name="velocity" value="{if $options.velocity}{$options.velocity}{else}1.0{/if}" placeholder="1.0" step="0.1" min="0" max="2"><br/>
	
	<span class="cc_In200px">{translate('Time until animation')}:</span>
	<input type="text" class="cc_In100px" name="pauseTime" value="{if $options.pauseTime}{$options.pauseTime}{else}8000{/if}"> ms<br/>
	<span class="cc_In200px">{translate('Time for animation')}:</span>
	<input type="text" class="cc_In100px" name="animSpeed" value="{if $options.animSpeed}{$options.animSpeed}{else}3000{/if}"> ms<br/>


	<p class="cc_In300px">
		<input id="label_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="label" value="1" {if $options.label}checked="checked" {/if}/>
		<label for="label_{$section_id}">{translate('Label display')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="random_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="random" value="1" {if $options.random}checked="checked" {/if}/>
		<label for="random_{$section_id}">{translate('Show images by chance')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="progressbar_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="progressbar" value="1" {if $options.progressbar}checked="checked" {/if}/>
		<label for="progressbar_{$section_id}">{translate('Progressbar')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="auto_play_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="auto_play" value="1" {if $options.auto_play}checked="checked" {/if}/>
		<label for="auto_play_{$section_id}">{translate('Auto Play')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="stop_over_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="stop_over" value="1" {if $options.stop_over}checked="checked" {/if}/>
		<label for="stop_over_{$section_id}">{translate('Stop Over')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="navigation_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="navigation" value="1" {if $options.navigation}checked="checked" {/if}/>
		<label for="navigation_{$section_id}">{translate('Navigation')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="numbers_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="numbers" value="1" {if $options.numbers}checked="checked" {/if}/>
		<label for="numbers_{$section_id}">{translate('Numbers')}:</label>
	</p><br/>


	<p class="cc_In300px">
		<input id="dots_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="dots" value="1" {if $options.dots}checked="checked" {/if}/>
		<label for="dots_{$section_id}">{translate('Dots')}:</label>
	</p><br/>
	<p class="cc_In300px">
		<input id="controls_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="controls" value="1" {if $options.controls}checked="checked" {/if}/>
		<label for="controls_{$section_id}">{translate('Controls')}:</label>
	</p><br/>

	<p class="cc_In300px">
		<input id="thumbs_{$section_id}" class="fc_checkbox_jq" type="checkbox" name="thumbs" value="1" {if $options.thumbs}checked="checked" {/if}/>
		<label for="thumbs_{$section_id}">{translate('Thumbs')}:</label>
	</p><br/>
	<input type="submit" name="speichern" value="{translate('Save')}">
</form>
