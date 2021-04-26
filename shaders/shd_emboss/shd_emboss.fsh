varying vec2 v_texcoord;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;

void main()
{ 
    vec2 onePixel = vec2(1.0 / resolution.x, 1.0 / resolution.y);
    vec2 uv = v_texcoord;
    
    vec3 colour = vec3(0.5);
    colour -= texture2D(gm_BaseTexture, uv - onePixel).rgb;
    colour += texture2D(gm_BaseTexture, uv + onePixel).rgb;
    colour.rgb = vec3((colour.r + colour.g + colour.b) / 3.0);
    
    gl_FragColor = vec4(colour.rgb, texture2D(gm_BaseTexture,uv).a);
}
