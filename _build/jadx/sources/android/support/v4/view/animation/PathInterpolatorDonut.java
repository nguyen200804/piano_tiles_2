package android.support.v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class PathInterpolatorDonut implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    public PathInterpolatorDonut(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / PRECISION)) + 1;
        this.mX = new float[i];
        this.mY = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.mX[i2] = fArr[0];
            this.mY[i2] = fArr[1];
        }
    }

    public PathInterpolatorDonut(float controlX, float controlY) {
        this(createQuad(controlX, controlY));
    }

    public PathInterpolatorDonut(float controlX1, float controlY1, float controlX2, float controlY2) {
        this(createCubic(controlX1, controlY1, controlX2, controlY2));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float t) {
        int i;
        if (t <= 0.0f) {
            return 0.0f;
        }
        if (t >= 1.0f) {
            return 1.0f;
        }
        int i2 = 0;
        int length = this.mX.length - 1;
        while (length - i2 > 1) {
            int i3 = (i2 + length) / 2;
            if (t < this.mX[i3]) {
                i = i2;
            } else {
                int i4 = length;
                i = i3;
                i3 = i4;
            }
            i2 = i;
            length = i3;
        }
        float f = this.mX[length] - this.mX[i2];
        if (f == 0.0f) {
            return this.mY[i2];
        }
        float f2 = (t - this.mX[i2]) / f;
        float f3 = this.mY[i2];
        return (f2 * (this.mY[length] - f3)) + f3;
    }

    private static Path createQuad(float controlX, float controlY) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(controlX, controlY, 1.0f, 1.0f);
        return path;
    }

    private static Path createCubic(float controlX1, float controlY1, float controlX2, float controlY2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(controlX1, controlY1, controlX2, controlY2, 1.0f, 1.0f);
        return path;
    }
}
