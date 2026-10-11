package com.cmplay.base.util.webview.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.base.util.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoadingView extends RelativeLayout {
    private ImageView mLoadingCircle;
    private TextView mLoadingTv;
    private TYPE mType;

    public enum TYPE {
        BIG,
        SMALL,
        RADAR
    }

    public void setType(TYPE type) {
        this.mType = type;
        fresh();
    }

    private void fresh() {
        if (TYPE.BIG == this.mType) {
            this.mLoadingCircle.setImageResource(R.drawable.com_cmplay_tag_loading_circle_big);
            this.mLoadingTv.setVisibility(0);
        } else if (TYPE.SMALL == this.mType) {
            this.mLoadingCircle.setImageResource(R.drawable.com_cmplay_tag_loading_circle_small);
            this.mLoadingTv.setVisibility(8);
        } else if (TYPE.RADAR == this.mType) {
            this.mLoadingCircle.setImageResource(R.drawable.com_cmplay_tag_loading_circle_radar);
            this.mLoadingTv.setVisibility(8);
        }
    }

    public void setLoadingText(String text) {
        this.mLoadingTv.setText(text);
    }

    public LoadingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.com_cmplay_message_tag_loading_view, this);
        this.mLoadingCircle = (ImageView) findViewById(R.id.loading_cicle);
        this.mLoadingTv = (TextView) findViewById(R.id.loading_tv);
        startAnim();
    }

    private void startAnim() {
        RotateAnimation rotateAnimation = new RotateAnimation(359.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(800L);
        rotateAnimation.setRepeatMode(1);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.mLoadingCircle.startAnimation(rotateAnimation);
    }

    public void setLoadingTextVisible(boolean visible) {
        if (visible) {
            this.mLoadingTv.setVisibility(0);
        } else {
            this.mLoadingTv.setVisibility(8);
        }
    }

    public void setLoadingTextColor(int color) {
        if (this.mLoadingTv != null) {
            this.mLoadingTv.setTextColor(color);
        }
    }

    public void setLoadingCircle(int id) {
        if (this.mLoadingCircle != null) {
            this.mLoadingCircle.setImageResource(id);
        }
    }
}
