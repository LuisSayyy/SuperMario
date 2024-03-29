/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite text1;
	SESprite text2;
	SESprite text3;
	SESprite text4;
	double opacity;
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("#FF9933"), get_scene_width(), get_scene_height());
		rsc.prepare_image("mystar", "star", 0.5*get_scene_width(), 0.5*get_scene_height());
		image1 = add_sprite_for_image(SEImage.for_resource("mystar"));
		image1.move(0,0);

		rsc.prepare_image("mymushroom", "Mushroom", 0.5*get_scene_width(), 0.5*get_scene_height());
		image2 = add_sprite_for_image(SEImage.for_resource("mymushroom"));
		image2.move(0.5*get_scene_width(),0);

		rsc.prepare_image("myflower", "flower", 0.5*get_scene_width(), 0.5*get_scene_height());
		image3 = add_sprite_for_image(SEImage.for_resource("myflower"));
		image3.move(0,0.5*get_scene_height());

		rsc.prepare_image("mypenguin", "penguin", 0.5*get_scene_width(), 0.5*get_scene_height());
		image4 = add_sprite_for_image(SEImage.for_resource("mypenguin"));
		image4.move(0.5*get_scene_width(),0.5*get_scene_height());

		rsc.prepare_font("myfont", "arial bold color=white", 40);
		text1 = add_sprite_for_text(" ", "myfont");
		
	}

	public void on_key_press(String name, String str) {
		base.on_key_press(name,str);
		text1 = add_sprite_for_text("Staaaar","myfont");
		text1.move(0.5*get_scene_width()-0.25*get_scene_width(), 
				  0.5*get_scene_height()-0.25*get_scene_height());
				
		text2 = add_sprite_for_text("Mushrooom","myfont");
		text2.move(0.75*get_scene_width(), 0.25*get_scene_height());
		
		text3 = add_sprite_for_text("Floweeer","myfont");
		text3.move(0.25*get_scene_width(), 0.75*get_scene_height());

		text4 = add_sprite_for_text("Penguiiin","myfont");
		text4.move(0.75*get_scene_width(), 0.75*get_scene_height());

		image1.set_alpha(0.5);
		image2.set_alpha(0.5);
		image3.set_alpha(0.5);
		image4.set_alpha(0.5);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		image1.set_alpha(1);
		image2.set_alpha(1);
		image3.set_alpha(1);
		image4.set_alpha(1);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
			base.on_pointer_press(pi);
			text1 = add_sprite_for_text("Staaaar","myfont");
			text1.move(0.5*get_scene_width()-0.25*get_scene_width(), 
				      0.5*get_scene_height()-0.25*get_scene_height());
			image1.set_alpha(0.5);
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
			base.on_pointer_press(pi);
			text2 = add_sprite_for_text("Mushrooom","myfont");
			text2.move(0.75*get_scene_width(), 0.25*get_scene_height());
			image2.set_alpha(0.5);
		}
		else if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
			base.on_pointer_press(pi);
			text3 = add_sprite_for_text("Floweeer","myfont");
			text3.move(0.25*get_scene_width(), 0.75*get_scene_height());
			image3.set_alpha(0.5);
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(), 0.5*get_scene_height())) {
			base.on_pointer_press(pi);
			text4 = add_sprite_for_text("Penguiiin","myfont");
			text4.move(0.75*get_scene_width(), 0.75*get_scene_height());
			image4.set_alpha(0.5);
		}
	}

	public void set_text(double alpha) {
		opacity = alpha;
	}
}
