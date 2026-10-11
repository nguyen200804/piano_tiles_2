package org.cocos2dx.lib;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxCustomGLSurfaceView extends GLSurfaceView {
    public Cocos2dxCustomGLSurfaceView(Context context) {
        super(context);
    }

    public Cocos2dxCustomGLSurfaceView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        Log.d("TestC", "dispatchTouchEvent start action:" + event.getAction() + " x:" + event.getX() + " y:" + event.getY() + " ");
        switch (event.getAction()) {
            case 0:
                Log.d("TestC", "dispatchTouchEvent ACTION_DOWN x:" + event.getX() + " y:" + event.getY());
                break;
            case 1:
                Log.d("TestC", "dispatchTouchEvent ACTION_UP");
                break;
            case 5:
                Log.d("TestC", "dispatchTouchEvent ACTION_POINTER_DOWN x:" + event.getX() + " y:" + event.getY());
                break;
            case 6:
                Log.d("TestC", "dispatchTouchEvent ACTION_POINTER_UP");
                break;
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                Log.d("TestC", "onTouchEvent ACTION_DOWN x:" + event.getX() + " y:" + event.getY());
                break;
            case 1:
                Log.d("TestC", "onTouchEvent ACTION_UP");
                break;
            case 5:
                Log.d("TestC", "onTouchEvent ACTION_POINTER_DOWN x:" + event.getX() + " y:" + event.getY());
                break;
            case 6:
                Log.d("TestC", "onTouchEvent ACTION_POINTER_UP");
                break;
        }
        return true;
    }
}
