package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Space extends View {
    public Space(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    public Space(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Space(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    private static int getDefaultSize2(int size, int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size2 = View.MeasureSpec.getSize(measureSpec);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(size, size2);
            case 0:
            default:
                return size;
            case 1073741824:
                return size2;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(getDefaultSize2(getSuggestedMinimumWidth(), widthMeasureSpec), getDefaultSize2(getSuggestedMinimumHeight(), heightMeasureSpec));
    }
}
