export uniform int width() { return programCount; }

void inc(reference uniform float<4> v) { ++v; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    uniform float<4> x = {b,b+1,b+2,b+3}, y = {b,b-1,b+2,0};

    inc(x);
    RET[programIndex] = 0;
    if (programIndex < 4)
        RET[programIndex] = x[programIndex];
}

export void result(uniform float RET[]) {
    RET[programIndex] = 0;
    RET[0] = 6;
    RET[1] = 7;
    RET[2] = 8;
    RET[3] = 9;
}
