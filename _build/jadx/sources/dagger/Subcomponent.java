package dagger;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public @interface Subcomponent {

    @Target({ElementType.TYPE})
    @Documented
    public @interface Builder {
    }
}
