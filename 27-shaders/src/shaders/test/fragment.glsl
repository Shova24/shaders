precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;

void main(){
    // Sample the texture using the interpolated UVs
    vec4 tex = texture2D(uTexture, vUv);

    // Multiply the sampled color by a tint color (uColor)
    gl_FragColor = tex * vec4(uColor, 1.0);
}