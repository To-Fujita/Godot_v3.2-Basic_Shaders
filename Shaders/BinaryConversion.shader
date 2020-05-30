shader_type canvas_item;
// Binary Conversion (Black & White)

uniform float _threshold : hint_range(0, 3) = 1.5;


void fragment() {
	vec3 col = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float temp = col.r + col.g + col.b;
	
	if (temp > _threshold) {
		col = vec3(1.0, 1.0, 1.0);
	} else{
		col = vec3(0.0, 0.0, 0.0);
	}
	
	COLOR.rgb = col;
}
