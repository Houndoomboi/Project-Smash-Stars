function crow_airlight()
	{
	//Neutral Special
	/*
	- Grabs enemies in front
	- Hold the button to delay the grab
	- Throws the enemy forwards or upwards, depending on if the stick is tilted or not
	*/
	var run = true;
	var _phase = argument_count > 0 ? argument[0] : attack_phase;
	//Timer
	attack_frame = max(--attack_frame, 0);
	//Phases
	if (run)
		{
		switch (_phase)
			{
			case PHASE.start:
				{
				//Animation
				anim_sprite = spr_crow_weakair;
				anim_speed = 0;
				anim_frame = 0;
			
				attack_frame = 5;
					reverse_b();
				
				if (on_ground())
					{
					speed_set(0, 0, true, true);
					}
				else
					{
					speed_set(0, -1, true, true);
					}
				return;
				}
			//Startup
			case 0:
				{
				
				if (attack_frame == 0)
					{
						attack_phase ++;
						attack_frame = 34;
					}
				break;
				}
			//Throw
			case 1:
				{
				if (attack_frame == 28)
					anim_frame = 1;
				if (attack_frame == 24)
					anim_frame = 2;
				if (attack_frame == 20)
					anim_frame = 3;
				if (attack_frame == 18)
					anim_frame = 4;
				if (attack_frame == 16)
					anim_frame = 5;
				if (attack_frame == 14)
					anim_frame = 6;
				if (attack_frame == 12)
					anim_frame = 3;
				if (attack_frame == 10)
					anim_frame = 4;
				if (attack_frame == 8)
					anim_frame = 5;
				if (attack_frame == 6)
					anim_frame = 6;
				if (attack_frame == 5)
					anim_frame = 7;
				if (attack_frame == 4)
					anim_frame = 8;
				if (attack_frame == 3)
					anim_frame = 9;
				if (attack_frame == 2)
					anim_frame = 10;
				if (attack_frame == 1)
					anim_frame = 11;
			
				//Throw hitbox
				if (attack_frame <= 20 && attack_frame > 8)
					{
						if (attack_frame % 4 == 0)
						{
							hitbox_group_reset(1);
						var _hitbox = hitbox_create_magnetbox(10, -14, 0.2, 0.5, 1, 3, 0, 30, 30, 3, SHAPE.circle, 1);
						_hitbox.hit_sfx = snd_hit_weak0;
						}
					
					}
				if (attack_frame == 8)
					{
						{
						var _hitbox = hitbox_create_melee(10, -14, 0.2, 0.5, 6, 3, 0.5, 10, 45, 3, SHAPE.circle, 2);
						_hitbox.knockback_state = PLAYER_STATE.balloon;
						_hitbox.hit_sfx = snd_hit_strong0;
						_hitbox.hit_vfx_style = [HIT_VFX.normal_medium, HIT_VFX.lines];
						_hitbox.force_reeling = true;
						_hitbox.techable = false
						}
					
					}

				if (attack_frame == 0)
					{
					attack_stop();
					}
				break;
				}
			}
		}
	//Movement
	if (on_ground())
		{
		move_grounded();
		}
	else
		{
		move();
		}
	}
/* Copyright 2025 Springroll Games / Yosi */