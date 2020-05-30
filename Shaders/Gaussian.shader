shader_type canvas_item;
// Gausian Filter

render_mode blend_mix;

uniform float _size : hint_range(0, 10) = 5;

float pascal_tra(int depth, int order) {
	if (order < 1 || order == depth) {
		return 1.0;
	} else {
		float Temp_o = 1.0;
		for (int i = 1; i <= order; i++) {
			Temp_o = Temp_o * float(i);
		}
		float Temp_d = 1.0;
		for (int i = 1; i <= depth; i++) {
			Temp_d = Temp_d * float(i);
		}
		float Temp_od = 1.0;
		for (int i = 1; i <= (depth - order); i++) {
			Temp_od = Temp_od * float(i);
		}
		return Temp_d / (Temp_o * Temp_od);
	}
}

void fragment( )
{
	float Count = pow(2.0, _size * 2.0) * pow(2.0, _size * 2.0);
	vec4 col = vec4(0.0);
	for (int i = int(-_size); i <= int(_size); i++) {
		for (int j = int(-_size); j <= int(_size); j++) {
			vec2 quat_xy = vec2( float(i) * SCREEN_PIXEL_SIZE.x, float(j) * SCREEN_PIXEL_SIZE.y );
			float temp_x = pascal_tra(int(_size) * 2, i + int(_size));
			float temp_y = pascal_tra(int(_size) * 2, j + int(_size));
			col += textureLod(SCREEN_TEXTURE, SCREEN_UV + quat_xy, 0.0) * temp_x * temp_y / Count;
		}
	}
	
	COLOR = col;
}
