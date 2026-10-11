package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class FragmentTransitionCompat21 {

    public static class EpicenterView {
        public View epicenter;
    }

    public interface ViewRetriever {
        View getView();
    }

    FragmentTransitionCompat21() {
    }

    public static String getTransitionName(View view) {
        return view.getTransitionName();
    }

    public static Object cloneTransition(Object transition) {
        if (transition != null) {
            return ((Transition) transition).clone();
        }
        return transition;
    }

    public static Object captureExitingViews(Object exitTransition, View root, ArrayList<View> viewList, Map<String, View> namedViews, View nonExistentView) {
        if (exitTransition != null) {
            captureTransitioningViews(viewList, root);
            if (namedViews != null) {
                viewList.removeAll(namedViews.values());
            }
            if (viewList.isEmpty()) {
                return null;
            }
            viewList.add(nonExistentView);
            addTargets((Transition) exitTransition, viewList);
            return exitTransition;
        }
        return exitTransition;
    }

    public static void excludeTarget(Object transitionObject, View view, boolean exclude) {
        ((Transition) transitionObject).excludeTarget(view, exclude);
    }

    public static void beginDelayedTransition(ViewGroup sceneRoot, Object transitionObject) {
        TransitionManager.beginDelayedTransition(sceneRoot, (Transition) transitionObject);
    }

    public static void setEpicenter(Object transitionObject, View view) {
        final Rect boundsOnScreen = getBoundsOnScreen(view);
        ((Transition) transitionObject).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.support.v4.app.FragmentTransitionCompat21.1
            @Override // android.transition.Transition.EpicenterCallback
            public Rect onGetEpicenter(Transition transition) {
                return boundsOnScreen;
            }
        });
    }

    public static Object wrapSharedElementTransition(Object transitionObj) {
        Transition transition;
        if (transitionObj == null || (transition = (Transition) transitionObj) == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(transition);
        return transitionSet;
    }

    public static void addTransitionTargets(Object enterTransitionObject, Object sharedElementTransitionObject, final View container, final ViewRetriever inFragment, final View nonExistentView, EpicenterView epicenterView, final Map<String, String> nameOverrides, final ArrayList<View> enteringViews, Map<String, View> namedViews, final Map<String, View> renamedViews, ArrayList<View> sharedElementTargets) {
        if (enterTransitionObject != null || sharedElementTransitionObject != null) {
            final Transition transition = (Transition) enterTransitionObject;
            if (transition != null) {
                transition.addTarget(nonExistentView);
            }
            if (sharedElementTransitionObject != null) {
                setSharedElementTargets(sharedElementTransitionObject, nonExistentView, namedViews, sharedElementTargets);
            }
            if (inFragment != null) {
                container.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.FragmentTransitionCompat21.2
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        container.getViewTreeObserver().removeOnPreDrawListener(this);
                        if (transition != null) {
                            transition.removeTarget(nonExistentView);
                        }
                        View view = inFragment.getView();
                        if (view != null) {
                            if (!nameOverrides.isEmpty()) {
                                FragmentTransitionCompat21.findNamedViews(renamedViews, view);
                                renamedViews.keySet().retainAll(nameOverrides.values());
                                for (Map.Entry entry : nameOverrides.entrySet()) {
                                    View view2 = (View) renamedViews.get((String) entry.getValue());
                                    if (view2 != null) {
                                        view2.setTransitionName((String) entry.getKey());
                                    }
                                }
                            }
                            if (transition != null) {
                                FragmentTransitionCompat21.captureTransitioningViews(enteringViews, view);
                                enteringViews.removeAll(renamedViews.values());
                                enteringViews.add(nonExistentView);
                                FragmentTransitionCompat21.addTargets(transition, enteringViews);
                                return true;
                            }
                            return true;
                        }
                        return true;
                    }
                });
            }
            setSharedElementEpicenter(transition, epicenterView);
        }
    }

    public static Object mergeTransitions(Object enterTransitionObject, Object exitTransitionObject, Object sharedElementTransitionObject, boolean allowOverlap) {
        Transition transition = (Transition) enterTransitionObject;
        Transition transition2 = (Transition) exitTransitionObject;
        Transition transition3 = (Transition) sharedElementTransitionObject;
        if (transition == null || transition2 == null) {
            allowOverlap = true;
        }
        if (allowOverlap) {
            TransitionSet transitionSet = new TransitionSet();
            if (transition != null) {
                transitionSet.addTransition(transition);
            }
            if (transition2 != null) {
                transitionSet.addTransition(transition2);
            }
            if (transition3 != null) {
                transitionSet.addTransition(transition3);
                return transitionSet;
            }
            return transitionSet;
        }
        Transition transition4 = null;
        if (transition2 != null && transition != null) {
            transition4 = new TransitionSet().addTransition(transition2).addTransition(transition).setOrdering(1);
        } else if (transition2 != null) {
            transition4 = transition2;
        } else if (transition != null) {
            transition4 = transition;
        }
        if (transition3 == null) {
            return transition4;
        }
        TransitionSet transitionSet2 = new TransitionSet();
        if (transition4 != null) {
            transitionSet2.addTransition(transition4);
        }
        transitionSet2.addTransition(transition3);
        return transitionSet2;
    }

    public static void setSharedElementTargets(Object transitionObj, View nonExistentView, Map<String, View> namedViews, ArrayList<View> sharedElementTargets) {
        TransitionSet transitionSet = (TransitionSet) transitionObj;
        sharedElementTargets.clear();
        sharedElementTargets.addAll(namedViews.values());
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = sharedElementTargets.size();
        for (int i = 0; i < size; i++) {
            bfsAddViewChildren(targets, sharedElementTargets.get(i));
        }
        sharedElementTargets.add(nonExistentView);
        addTargets(transitionSet, sharedElementTargets);
    }

    private static void bfsAddViewChildren(List<View> views, View startView) {
        int size = views.size();
        if (!containedBeforeIndex(views, startView, size)) {
            views.add(startView);
            for (int i = size; i < views.size(); i++) {
                View view = views.get(i);
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (!containedBeforeIndex(views, childAt, size)) {
                            views.add(childAt);
                        }
                    }
                }
            }
        }
    }

    private static boolean containedBeforeIndex(List<View> views, View view, int maxIndex) {
        for (int i = 0; i < maxIndex; i++) {
            if (views.get(i) == view) {
                return true;
            }
        }
        return false;
    }

    private static void setSharedElementEpicenter(Transition transition, final EpicenterView epicenterView) {
        if (transition != null) {
            transition.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.support.v4.app.FragmentTransitionCompat21.3
                private Rect mEpicenter;

                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition2) {
                    if (this.mEpicenter == null && EpicenterView.this.epicenter != null) {
                        this.mEpicenter = FragmentTransitionCompat21.getBoundsOnScreen(EpicenterView.this.epicenter);
                    }
                    return this.mEpicenter;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Rect getBoundsOnScreen(View view) {
        Rect rect = new Rect();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void captureTransitioningViews(ArrayList<View> transitioningViews, View view) {
        if (view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.isTransitionGroup()) {
                    transitioningViews.add(viewGroup);
                    return;
                }
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    captureTransitioningViews(transitioningViews, viewGroup.getChildAt(i));
                }
                return;
            }
            transitioningViews.add(view);
        }
    }

    public static void findNamedViews(Map<String, View> namedViews, View view) {
        if (view.getVisibility() == 0) {
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                namedViews.put(transitionName, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    findNamedViews(namedViews, viewGroup.getChildAt(i));
                }
            }
        }
    }

    public static void cleanupTransitions(final View sceneRoot, final View nonExistentView, Object enterTransitionObject, final ArrayList<View> enteringViews, Object exitTransitionObject, final ArrayList<View> exitingViews, Object sharedElementTransitionObject, final ArrayList<View> sharedElementTargets, Object overallTransitionObject, final ArrayList<View> hiddenViews, final Map<String, View> renamedViews) {
        final Transition transition = (Transition) enterTransitionObject;
        final Transition transition2 = (Transition) exitTransitionObject;
        final Transition transition3 = (Transition) sharedElementTransitionObject;
        final Transition transition4 = (Transition) overallTransitionObject;
        if (transition4 != null) {
            sceneRoot.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.FragmentTransitionCompat21.4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (transition != null) {
                        FragmentTransitionCompat21.removeTargets(transition, enteringViews);
                    }
                    if (transition2 != null) {
                        FragmentTransitionCompat21.removeTargets(transition2, exitingViews);
                    }
                    if (transition3 != null) {
                        FragmentTransitionCompat21.removeTargets(transition3, sharedElementTargets);
                    }
                    for (Map.Entry entry : renamedViews.entrySet()) {
                        ((View) entry.getValue()).setTransitionName((String) entry.getKey());
                    }
                    int size = hiddenViews.size();
                    for (int i = 0; i < size; i++) {
                        transition4.excludeTarget((View) hiddenViews.get(i), false);
                    }
                    transition4.excludeTarget(nonExistentView, false);
                    return true;
                }
            });
        }
    }

    public static void removeTargets(Object transitionObject, ArrayList<View> views) {
        List<View> targets;
        Transition transition = (Transition) transitionObject;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                removeTargets(transitionSet.getTransitionAt(i), views);
            }
            return;
        }
        if (!hasSimpleTarget(transition) && (targets = transition.getTargets()) != null && targets.size() == views.size() && targets.containsAll(views)) {
            for (int size = views.size() - 1; size >= 0; size--) {
                transition.removeTarget(views.get(size));
            }
        }
    }

    public static void addTargets(Object transitionObject, ArrayList<View> views) {
        Transition transition = (Transition) transitionObject;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                addTargets(transitionSet.getTransitionAt(i), views);
            }
            return;
        }
        if (!hasSimpleTarget(transition) && isNullOrEmpty(transition.getTargets())) {
            int size = views.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(views.get(i2));
            }
        }
    }

    private static boolean hasSimpleTarget(Transition transition) {
        return (isNullOrEmpty(transition.getTargetIds()) && isNullOrEmpty(transition.getTargetNames()) && isNullOrEmpty(transition.getTargetTypes())) ? false : true;
    }

    private static boolean isNullOrEmpty(List list) {
        return list == null || list.isEmpty();
    }
}
