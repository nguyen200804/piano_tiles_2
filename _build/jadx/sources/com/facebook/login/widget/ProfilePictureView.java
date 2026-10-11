package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.R;
import com.facebook.i;
import com.facebook.internal.m;
import com.facebook.internal.n;
import com.facebook.internal.o;
import com.facebook.internal.s;
import com.facebook.u;
import com.tencent.mm.sdk.modelbase.BaseResp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3345a = ProfilePictureView.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f3346b;
    private int c;
    private int d;
    private boolean e;
    private Bitmap f;
    private ImageView g;
    private int h;
    private n i;
    private a j;
    private Bitmap k;

    public interface a {
        void a(i iVar);
    }

    public ProfilePictureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.c = 0;
        this.d = 0;
        this.e = true;
        this.h = -1;
        this.k = null;
        a(context);
        a(attrs);
    }

    public ProfilePictureView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.c = 0;
        this.d = 0;
        this.e = true;
        this.h = -1;
        this.k = null;
        a(context);
        a(attrs);
    }

    public final void a(int i) {
        switch (i) {
            case BaseResp.ErrCode.ERR_AUTH_DENIED /* -4 */:
            case BaseResp.ErrCode.ERR_SENT_FAILED /* -3 */:
            case -2:
            case -1:
                this.h = i;
                requestLayout();
                return;
            default:
                throw new IllegalArgumentException("Must use a predefined preset size");
        }
    }

    public final boolean a() {
        return this.e;
    }

    public final String b() {
        return this.f3346b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        boolean z = true;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        boolean z2 = false;
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(widthMeasureSpec);
        if (View.MeasureSpec.getMode(heightMeasureSpec) != 1073741824 && layoutParams.height == -2) {
            size = c(true);
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z2 = true;
        }
        if (View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824 || layoutParams.width != -2) {
            z = z2;
            i = size2;
        } else {
            i = c(true);
            widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        }
        if (z) {
            setMeasuredDimension(i, size);
            measureChildren(widthMeasureSpec, heightMeasureSpec);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        a(false);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f3346b);
        bundle.putInt("ProfilePictureView_presetSize", this.h);
        bundle.putBoolean("ProfilePictureView_isCropped", this.e);
        bundle.putParcelable("ProfilePictureView_bitmap", this.f);
        bundle.putInt("ProfilePictureView_width", this.d);
        bundle.putInt("ProfilePictureView_height", this.c);
        bundle.putBoolean("ProfilePictureView_refresh", this.i != null);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state.getClass() != Bundle.class) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        this.f3346b = bundle.getString("ProfilePictureView_profileId");
        this.h = bundle.getInt("ProfilePictureView_presetSize");
        this.e = bundle.getBoolean("ProfilePictureView_isCropped");
        this.d = bundle.getInt("ProfilePictureView_width");
        this.c = bundle.getInt("ProfilePictureView_height");
        a((Bitmap) bundle.getParcelable("ProfilePictureView_bitmap"));
        if (bundle.getBoolean("ProfilePictureView_refresh")) {
            a(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i = null;
    }

    private void a(Context context) {
        removeAllViews();
        this.g = new ImageView(context);
        this.g.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(this.g);
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_profile_picture_view);
        a(obtainStyledAttributes.getInt(R.styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
        this.e = obtainStyledAttributes.getBoolean(R.styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
        obtainStyledAttributes.recycle();
    }

    private void a(boolean z) {
        boolean d = d();
        if (this.f3346b == null || this.f3346b.length() == 0 || (this.d == 0 && this.c == 0)) {
            c();
        } else if (d || z) {
            b(true);
        }
    }

    private void c() {
        if (this.i != null) {
            m.b(this.i);
        }
        if (this.k == null) {
            a(BitmapFactory.decodeResource(getResources(), a() ? R.drawable.com_facebook_profile_picture_blank_square : R.drawable.com_facebook_profile_picture_blank_portrait));
        } else {
            d();
            a(Bitmap.createScaledBitmap(this.k, this.d, this.c, false));
        }
    }

    private void a(Bitmap bitmap) {
        if (this.g != null && bitmap != null) {
            this.f = bitmap;
            this.g.setImageBitmap(bitmap);
        }
    }

    private void b(boolean z) {
        n a2 = new n.a(getContext(), n.a(this.f3346b, this.d, this.c)).a(z).a(this).a(new n.b() { // from class: com.facebook.login.widget.ProfilePictureView.1
            @Override // com.facebook.internal.n.b
            public void a(o oVar) {
                ProfilePictureView.this.a(oVar);
            }
        }).a();
        if (this.i != null) {
            m.b(this.i);
        }
        this.i = a2;
        m.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(o oVar) {
        if (oVar.a() == this.i) {
            this.i = null;
            Bitmap c = oVar.c();
            Exception b2 = oVar.b();
            if (b2 != null) {
                a aVar = this.j;
                if (aVar != null) {
                    aVar.a(new i("Error in downloading profile picture for profileId: " + b(), b2));
                    return;
                } else {
                    s.a(u.REQUESTS, 6, f3345a, b2.toString());
                    return;
                }
            }
            if (c != null) {
                a(c);
                if (oVar.d()) {
                    b(false);
                }
            }
        }
    }

    private boolean d() {
        int i;
        int height = getHeight();
        int width = getWidth();
        if (width >= 1 && height >= 1) {
            int c = c(false);
            if (c != 0) {
                height = c;
            } else {
                c = width;
            }
            if (c <= height) {
                i = a() ? c : 0;
            } else {
                c = a() ? height : 0;
                i = height;
            }
            r2 = (c == this.d && i == this.c) ? false : true;
            this.d = c;
            this.c = i;
        }
        return r2;
    }

    private int c(boolean z) {
        int i;
        switch (this.h) {
            case BaseResp.ErrCode.ERR_AUTH_DENIED /* -4 */:
                i = R.dimen.com_facebook_profilepictureview_preset_size_large;
                break;
            case BaseResp.ErrCode.ERR_SENT_FAILED /* -3 */:
                i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            case -2:
                i = R.dimen.com_facebook_profilepictureview_preset_size_small;
                break;
            case -1:
                if (!z) {
                    return 0;
                }
                i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            default:
                return 0;
        }
        return getResources().getDimensionPixelSize(i);
    }
}
