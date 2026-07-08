///@category Stages
/*
This script defines the data used for each stage.
*/
function stage_data_get_all()
	{
	static _data = 
		[
		stage_define
			(
			"Darryl's Ship",
			stage_base_init,
			rm_darrylship,
			spr_stage_thumbnail_placeholder,
			["texture_stage_peak"],
			0,
			),
		stage_define
			(
			"El Primo's Ring",
			stage_primoring_init,
			rm_primoring,
			spr_stage_thumbnail_placeholder,
			["texture_stage_islands"],
			0,
			),
		stage_define
			(
			"Gem Mine",
			stage_base_init,
			rm_gemmine,
			spr_stage_thumbnail_placeholder,
			["texture_stage_desert"],
			0,
			),
		stage_define
			(
			"Campground",
			stage_campground_init,
			rm_stage_campground,
			spr_stage_thumbnails,
			["texture_stage_campgrounds"],
			3,
			),
		stage_define
			(
			"Ranger Ranch",
			stage_ranch_init,
			rm_stage_ranch,
			spr_stage_thumbnail_placeholder,
			["texture_stage_desert"],
			0,
			),
		stage_define
			(
			"Smelting Factory",
			stage_factory_init,
			rm_stage_factory,
			spr_stage_thumbnails,
			["texture_stage_factory"],
			4,
			),
		stage_define
			(
			"Stormy Clouds",
			stage_clouds_init,
			rm_stage_clouds,
			spr_stage_thumbnails,
			["texture_stage_clouds"],
			5,
			),
		stage_define
			(
			"The Archive",
			stage_archive_init,
			rm_stage_archive,
			spr_stage_thumbnails,
			["texture_stage_archive"],
			6,
			),
		stage_define
			(
			"Small Campground",
			stage_small_campground_init,
			rm_stage_small_campground,
			spr_stage_thumbnails,
			["texture_stage_campgrounds"],
			7,
			),
		stage_define
			(
			"Haven",
			stage_haven_init,
			rm_stage_haven,
			spr_stage_thumbnails,
			["texture_stage_haven"],
			8,
			),
		stage_define
			(
			"Smiley Floats",
			stage_smiley_floats_init,
			rm_stage_smiley_floats,
			spr_stage_thumbnails,
			["texture_stage_smiley_floats"],
			9,
			),
		stage_define
			(
			"Biosphere",
			stage_biosphere_init,
			rm_stage_biosphere,
			spr_stage_thumbnails,
			["texture_stage_biosphere"],
			10,
			),
	    ];
	return _data;
	}
/* Copyright 2025 Springroll Games / Yosi */