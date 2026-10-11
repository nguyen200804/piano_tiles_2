package com.unity3d.ads.webview.bridge;

import com.unity3d.ads.BuildConfig;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.webview.WebViewApp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewBridge {
    private static HashMap<String, HashMap<String, HashMap<Integer, Method>>> _classTable;

    public static void setClassTable(Class[] apiClassList) {
        HashMap<Integer, Method> hashMap;
        if (apiClassList != null) {
            _classTable = new HashMap<>();
            for (Class cls : apiClassList) {
                if (cls != null && cls.getPackage().getName().startsWith(BuildConfig.APPLICATION_ID)) {
                    HashMap<String, HashMap<Integer, Method>> hashMap2 = new HashMap<>();
                    for (Method method : cls.getMethods()) {
                        if (method.getAnnotation(WebViewExposed.class) != null) {
                            String name = method.getName();
                            if (hashMap2.containsKey(name)) {
                                hashMap = hashMap2.get(name);
                            } else {
                                hashMap = new HashMap<>();
                            }
                            hashMap.put(Integer.valueOf(Arrays.deepHashCode(method.getParameterTypes())), method);
                            hashMap2.put(name, hashMap);
                        }
                    }
                    _classTable.put(cls.getName(), hashMap2);
                }
            }
        }
    }

    private static Method findMethod(String className, String methodName, Object[] parameters) throws JSONException, NoSuchMethodException {
        if (!_classTable.containsKey(className)) {
            throw new NoSuchMethodException();
        }
        HashMap<String, HashMap<Integer, Method>> hashMap = _classTable.get(className);
        if (!hashMap.containsKey(methodName)) {
            throw new NoSuchMethodException();
        }
        return hashMap.get(methodName).get(Integer.valueOf(Arrays.deepHashCode(getTypes(parameters))));
    }

    private static Class<?>[] getTypes(Object[] parameters) throws JSONException {
        Class<?>[] clsArr;
        if (parameters == null) {
            clsArr = new Class[1];
        } else {
            clsArr = new Class[parameters.length + 1];
        }
        if (parameters != null) {
            for (int i = 0; i < parameters.length; i++) {
                clsArr[i] = parameters[i].getClass();
            }
        }
        clsArr[clsArr.length - 1] = WebViewCallback.class;
        return clsArr;
    }

    private static Object[] getValues(Object[] parameters, WebViewCallback callback) throws JSONException {
        Object[] objArr;
        if (parameters == null) {
            if (callback == null) {
                return null;
            }
            objArr = new Object[1];
        } else {
            objArr = new Object[(callback == null ? 0 : 1) + parameters.length];
        }
        if (parameters != null) {
            System.arraycopy(parameters, 0, objArr, 0, parameters.length);
        }
        if (callback != null) {
            objArr[objArr.length - 1] = callback;
            return objArr;
        }
        return objArr;
    }

    public static void handleInvocation(String className, String methodName, Object[] parameters, WebViewCallback callback) throws Exception {
        try {
            try {
                findMethod(className, methodName, parameters).invoke(null, getValues(parameters, callback));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | JSONException e) {
                callback.error(WebViewBridgeError.INVOCATION_FAILED, className, methodName, parameters, e.getMessage());
                throw e;
            }
        } catch (NoSuchMethodException | JSONException e2) {
            callback.error(WebViewBridgeError.METHOD_NOT_FOUND, className, methodName, parameters);
            throw e2;
        }
    }

    public static void handleCallback(String callbackId, String callbackStatus, Object[] parameters) throws Exception {
        try {
            WebViewApp.getCurrentApp().getCallback(callbackId).invoke(callbackStatus, getValues(parameters, null));
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException | JSONException e) {
            DeviceLog.error("Error while invoking method");
            throw e;
        }
    }
}
