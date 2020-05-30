shader_type canvas_item;
// Binary Conversion & Default Filter


uniform float _threshold : hint_range(0, 50) = 10;
uniform float _line_weight : hint_range(0, 1) = 0.7;
uniform float _gradation_size : hint_range(0, 10) = 3;
uniform float _weight : hint_range(0, 1) = 0.7;


void fragment() {
	vec3 col = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float temp = col.r + col.g + col.b;
	
	if (temp > _threshold) {
		col = vec3(1.0, 1.0, 1.0);
	} else{
		col = vec3(0.0, 0.0, 0.0);
	}
	
	COLOR = vec4(col, 1.0) * _line_weight + vec4(textureLod(SCREEN_TEXTURE, SCREEN_UV, _gradation_size).rgb, _weight);
}

