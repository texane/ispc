
export uniform int width() { return programCount; }



export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    uniform float x[47][74] = 2.;
    x[a][b-1] = 0;
    RET[programIndex] = x[2][a];
}

export void result(uniform float RET[]) { 
    RET[programIndex] = 2;
    RET[3] = 0;
}

