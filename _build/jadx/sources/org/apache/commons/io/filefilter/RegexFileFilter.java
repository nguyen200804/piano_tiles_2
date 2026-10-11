package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.regex.Pattern;
import org.apache.commons.io.IOCase;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RegexFileFilter extends AbstractFileFilter implements Serializable {
    private final Pattern pattern;

    public RegexFileFilter(String pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = Pattern.compile(pattern);
    }

    public RegexFileFilter(String pattern, IOCase caseSensitivity) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        int i = 0;
        if (caseSensitivity != null && !caseSensitivity.isCaseSensitive()) {
            i = 2;
        }
        this.pattern = Pattern.compile(pattern, i);
    }

    public RegexFileFilter(String pattern, int flags) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = Pattern.compile(pattern, flags);
    }

    public RegexFileFilter(Pattern pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = pattern;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File dir, String name) {
        return this.pattern.matcher(name).matches();
    }
}
