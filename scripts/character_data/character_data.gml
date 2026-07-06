///@category Characters
/*
This script defines the data used for each character, including the character's init script, palette, portrait, texture page, etc.
*/
function character_data_get_all()
	{
	static _data =
		[
		character_define
			(
			"Colt",
			character_colt_init,
			spr_blocky_palette,
			spr_colt_portrait,
			spr_blocky_css,
			spr_colt_portrait,
			spr_blocky_stock,
			spr_colt_portrait,
			song_default_victory,
			["texture_character_blocky", "texture_character_basic"],
			blocky_cpu_script,
			),
		character_define
			(
			"Shelly",
			character_shelly_init,
			spr_shelly_palette,
			spr_shelly_css,
			spr_shelly_css,
			spr_shelly_portrait,
			spr_blocky_stock,
			spr_shelly_render,
			song_default_victory,
			["texture_character_shelly", "texture_character_basic"],
			shelly_cpu_script,
			),
		character_define
			(
			"Spike",
			character_spike_init,
			spr_spike_palette,
			spr_spike_portrait,
			spr_spike_portrait,
			spr_spike_portrait,
			spr_blocky_stock,
			spr_spike_portrait,
			song_default_victory,
			["texture_character_shelly", "texture_character_basic"],
			//shelly_cpu_script,
			),
		character_define
			(
			"Random",
			-1,
			spr_palette_random,
			spr_css_random,
			spr_css_random,
			spr_css_random,
			spr_css_random,
			spr_css_random,
			song_default_victory,
			undefined,
			),
		];
	return _data;
	}
/* Copyright 2025 Springroll Games / Yosi */