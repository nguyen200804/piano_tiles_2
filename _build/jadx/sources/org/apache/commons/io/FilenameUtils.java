package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FilenameUtils {
    private static final char OTHER_SEPARATOR;
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';
    public static final char EXTENSION_SEPARATOR = '.';
    public static final String EXTENSION_SEPARATOR_STR = Character.toString(EXTENSION_SEPARATOR);
    private static final char SYSTEM_SEPARATOR = File.separatorChar;

    static {
        if (isSystemWindows()) {
            OTHER_SEPARATOR = '/';
        } else {
            OTHER_SEPARATOR = '\\';
        }
    }

    static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == '\\';
    }

    private static boolean isSeparator(char ch) {
        return ch == '/' || ch == '\\';
    }

    public static String normalize(String filename) {
        return doNormalize(filename, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String filename, boolean unixSeparator) {
        return doNormalize(filename, unixSeparator ? '/' : '\\', true);
    }

    public static String normalizeNoEndSeparator(String filename) {
        return doNormalize(filename, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String filename, boolean unixSeparator) {
        return doNormalize(filename, unixSeparator ? '/' : '\\', false);
    }

    private static String doNormalize(String filename, char separator, boolean keepSeparator) {
        int i;
        if (filename == null) {
            return null;
        }
        int length = filename.length();
        if (length != 0) {
            int prefixLength = getPrefixLength(filename);
            if (prefixLength < 0) {
                return null;
            }
            char[] cArr = new char[length + 2];
            filename.getChars(0, filename.length(), cArr, 0);
            char c = separator == SYSTEM_SEPARATOR ? OTHER_SEPARATOR : SYSTEM_SEPARATOR;
            for (int i2 = 0; i2 < cArr.length; i2++) {
                if (cArr[i2] == c) {
                    cArr[i2] = separator;
                }
            }
            boolean z = true;
            if (cArr[length - 1] != separator) {
                i = length + 1;
                cArr[length] = separator;
                z = false;
            } else {
                i = length;
            }
            int i3 = i;
            int i4 = prefixLength + 1;
            while (i4 < i3) {
                if (cArr[i4] == separator && cArr[i4 - 1] == separator) {
                    System.arraycopy(cArr, i4, cArr, i4 - 1, i3 - i4);
                    i3--;
                    i4--;
                }
                i4++;
            }
            int i5 = prefixLength + 1;
            while (i5 < i3) {
                if (cArr[i5] == separator && cArr[i5 - 1] == '.' && (i5 == prefixLength + 1 || cArr[i5 - 2] == separator)) {
                    if (i5 == i3 - 1) {
                        z = true;
                    }
                    System.arraycopy(cArr, i5 + 1, cArr, i5 - 1, i3 - i5);
                    i3 -= 2;
                    i5--;
                }
                z = z;
                i5++;
            }
            int i6 = prefixLength + 2;
            while (i6 < i3) {
                if (cArr[i6] == separator && cArr[i6 - 1] == '.' && cArr[i6 - 2] == '.' && (i6 == prefixLength + 2 || cArr[i6 - 3] == separator)) {
                    if (i6 == prefixLength + 2) {
                        return null;
                    }
                    if (i6 == i3 - 1) {
                        z = true;
                    }
                    int i7 = i6 - 4;
                    while (true) {
                        if (i7 >= prefixLength) {
                            if (cArr[i7] == separator) {
                                System.arraycopy(cArr, i6 + 1, cArr, i7 + 1, i3 - i6);
                                i3 -= i6 - i7;
                                i6 = i7 + 1;
                                break;
                            }
                            i7--;
                        } else {
                            System.arraycopy(cArr, i6 + 1, cArr, prefixLength, i3 - i6);
                            i3 -= (i6 + 1) - prefixLength;
                            i6 = prefixLength + 1;
                            break;
                        }
                    }
                }
                z = z;
                i6++;
            }
            if (i3 <= 0) {
                return "";
            }
            if (i3 <= prefixLength) {
                return new String(cArr, 0, i3);
            }
            if (z && keepSeparator) {
                return new String(cArr, 0, i3);
            }
            return new String(cArr, 0, i3 - 1);
        }
        return filename;
    }

    public static String concat(String basePath, String fullFilenameToAdd) {
        int prefixLength = getPrefixLength(fullFilenameToAdd);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(fullFilenameToAdd);
        }
        if (basePath == null) {
            return null;
        }
        int length = basePath.length();
        if (length == 0) {
            return normalize(fullFilenameToAdd);
        }
        if (isSeparator(basePath.charAt(length - 1))) {
            return normalize(basePath + fullFilenameToAdd);
        }
        return normalize(basePath + '/' + fullFilenameToAdd);
    }

    public static boolean directoryContains(String canonicalParent, String canonicalChild) throws IOException {
        if (canonicalParent == null) {
            throw new IllegalArgumentException("Directory must not be null");
        }
        if (canonicalChild == null || IOCase.SYSTEM.checkEquals(canonicalParent, canonicalChild)) {
            return false;
        }
        return IOCase.SYSTEM.checkStartsWith(canonicalChild, canonicalParent);
    }

    public static String separatorsToUnix(String path) {
        return (path == null || path.indexOf(92) == -1) ? path : path.replace('\\', '/');
    }

    public static String separatorsToWindows(String path) {
        return (path == null || path.indexOf(47) == -1) ? path : path.replace('/', '\\');
    }

    public static String separatorsToSystem(String path) {
        if (path == null) {
            return null;
        }
        if (isSystemWindows()) {
            return separatorsToWindows(path);
        }
        return separatorsToUnix(path);
    }

    public static int getPrefixLength(String filename) {
        if (filename == null) {
            return -1;
        }
        int length = filename.length();
        if (length == 0) {
            return 0;
        }
        char charAt = filename.charAt(0);
        if (charAt == ':') {
            return -1;
        }
        if (length == 1) {
            if (charAt == '~') {
                return 2;
            }
            return !isSeparator(charAt) ? 0 : 1;
        }
        if (charAt == '~') {
            int indexOf = filename.indexOf(47, 1);
            int indexOf2 = filename.indexOf(92, 1);
            if (indexOf == -1 && indexOf2 == -1) {
                return length + 1;
            }
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            if (indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            return Math.min(indexOf, indexOf2) + 1;
        }
        char charAt2 = filename.charAt(1);
        if (charAt2 == ':') {
            char upperCase = Character.toUpperCase(charAt);
            if (upperCase < 'A' || upperCase > 'Z') {
                return -1;
            }
            return (length == 2 || !isSeparator(filename.charAt(2))) ? 2 : 3;
        }
        if (!isSeparator(charAt) || !isSeparator(charAt2)) {
            return !isSeparator(charAt) ? 0 : 1;
        }
        int indexOf3 = filename.indexOf(47, 2);
        int indexOf4 = filename.indexOf(92, 2);
        if ((indexOf3 == -1 && indexOf4 == -1) || indexOf3 == 2 || indexOf4 == 2) {
            return -1;
        }
        if (indexOf3 == -1) {
            indexOf3 = indexOf4;
        }
        if (indexOf4 == -1) {
            indexOf4 = indexOf3;
        }
        return Math.min(indexOf3, indexOf4) + 1;
    }

    public static int indexOfLastSeparator(String filename) {
        if (filename == null) {
            return -1;
        }
        return Math.max(filename.lastIndexOf(47), filename.lastIndexOf(92));
    }

    public static int indexOfExtension(String filename) {
        int lastIndexOf;
        if (filename != null && indexOfLastSeparator(filename) <= (lastIndexOf = filename.lastIndexOf(46))) {
            return lastIndexOf;
        }
        return -1;
    }

    public static String getPrefix(String filename) {
        int prefixLength;
        if (filename == null || (prefixLength = getPrefixLength(filename)) < 0) {
            return null;
        }
        if (prefixLength > filename.length()) {
            return filename + '/';
        }
        return filename.substring(0, prefixLength);
    }

    public static String getPath(String filename) {
        return doGetPath(filename, 1);
    }

    public static String getPathNoEndSeparator(String filename) {
        return doGetPath(filename, 0);
    }

    private static String doGetPath(String filename, int separatorAdd) {
        int prefixLength;
        if (filename == null || (prefixLength = getPrefixLength(filename)) < 0) {
            return null;
        }
        int indexOfLastSeparator = indexOfLastSeparator(filename);
        int i = indexOfLastSeparator + separatorAdd;
        if (prefixLength >= filename.length() || indexOfLastSeparator < 0 || prefixLength >= i) {
            return "";
        }
        return filename.substring(prefixLength, i);
    }

    public static String getFullPath(String filename) {
        return doGetFullPath(filename, true);
    }

    public static String getFullPathNoEndSeparator(String filename) {
        return doGetFullPath(filename, false);
    }

    private static String doGetFullPath(String filename, boolean includeSeparator) {
        int prefixLength;
        if (filename != null && (prefixLength = getPrefixLength(filename)) >= 0) {
            if (prefixLength >= filename.length()) {
                if (includeSeparator) {
                    return getPrefix(filename);
                }
                return filename;
            }
            int indexOfLastSeparator = indexOfLastSeparator(filename);
            if (indexOfLastSeparator < 0) {
                return filename.substring(0, prefixLength);
            }
            int i = (includeSeparator ? 1 : 0) + indexOfLastSeparator;
            if (i == 0) {
                i++;
            }
            return filename.substring(0, i);
        }
        return null;
    }

    public static String getName(String filename) {
        if (filename == null) {
            return null;
        }
        return filename.substring(indexOfLastSeparator(filename) + 1);
    }

    public static String getBaseName(String filename) {
        return removeExtension(getName(filename));
    }

    public static String getExtension(String filename) {
        if (filename == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(filename);
        if (indexOfExtension == -1) {
            return "";
        }
        return filename.substring(indexOfExtension + 1);
    }

    public static String removeExtension(String filename) {
        if (filename == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(filename);
        return indexOfExtension != -1 ? filename.substring(0, indexOfExtension) : filename;
    }

    public static boolean equals(String filename1, String filename2) {
        return equals(filename1, filename2, false, IOCase.SENSITIVE);
    }

    public static boolean equalsOnSystem(String filename1, String filename2) {
        return equals(filename1, filename2, false, IOCase.SYSTEM);
    }

    public static boolean equalsNormalized(String filename1, String filename2) {
        return equals(filename1, filename2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String filename1, String filename2) {
        return equals(filename1, filename2, true, IOCase.SYSTEM);
    }

    public static boolean equals(String filename1, String filename2, boolean normalized, IOCase caseSensitivity) {
        if (filename1 == null || filename2 == null) {
            return filename1 == null && filename2 == null;
        }
        if (normalized) {
            filename1 = normalize(filename1);
            filename2 = normalize(filename2);
            if (filename1 == null || filename2 == null) {
                throw new NullPointerException("Error normalizing one or both of the file names");
            }
        }
        if (caseSensitivity == null) {
            caseSensitivity = IOCase.SENSITIVE;
        }
        return caseSensitivity.checkEquals(filename1, filename2);
    }

    public static boolean isExtension(String filename, String extension) {
        if (filename == null) {
            return false;
        }
        if (extension == null || extension.length() == 0) {
            return indexOfExtension(filename) == -1;
        }
        return getExtension(filename).equals(extension);
    }

    public static boolean isExtension(String filename, String[] extensions) {
        if (filename == null) {
            return false;
        }
        if (extensions == null || extensions.length == 0) {
            return indexOfExtension(filename) == -1;
        }
        String extension = getExtension(filename);
        for (String str : extensions) {
            if (extension.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExtension(String filename, Collection<String> extensions) {
        if (filename == null) {
            return false;
        }
        if (extensions == null || extensions.isEmpty()) {
            return indexOfExtension(filename) == -1;
        }
        String extension = getExtension(filename);
        Iterator<String> it = extensions.iterator();
        while (it.hasNext()) {
            if (extension.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean wildcardMatch(String filename, String wildcardMatcher) {
        return wildcardMatch(filename, wildcardMatcher, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatchOnSystem(String filename, String wildcardMatcher) {
        return wildcardMatch(filename, wildcardMatcher, IOCase.SYSTEM);
    }

    public static boolean wildcardMatch(String filename, String wildcardMatcher, IOCase caseSensitivity) {
        if (filename == null && wildcardMatcher == null) {
            return true;
        }
        if (filename == null || wildcardMatcher == null) {
            return false;
        }
        if (caseSensitivity == null) {
            caseSensitivity = IOCase.SENSITIVE;
        }
        String[] splitOnTokens = splitOnTokens(wildcardMatcher);
        Stack stack = new Stack();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        do {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                int i3 = iArr[0];
                int i4 = iArr[1];
                z = true;
                i = i3;
                i2 = i4;
            }
            while (i < splitOnTokens.length) {
                if (splitOnTokens[i].equals("?")) {
                    i2++;
                    if (i2 > filename.length()) {
                        break;
                    }
                    z = false;
                    i++;
                } else {
                    if (splitOnTokens[i].equals("*")) {
                        if (i == splitOnTokens.length - 1) {
                            i2 = filename.length();
                            z = true;
                        } else {
                            z = true;
                        }
                    } else if (z) {
                        i2 = caseSensitivity.checkIndexOf(filename, i2, splitOnTokens[i]);
                        if (i2 == -1) {
                            break;
                        }
                        int checkIndexOf = caseSensitivity.checkIndexOf(filename, i2 + 1, splitOnTokens[i]);
                        if (checkIndexOf >= 0) {
                            stack.push(new int[]{i, checkIndexOf});
                        }
                        i2 += splitOnTokens[i].length();
                        z = false;
                    } else {
                        if (!caseSensitivity.checkRegionMatches(filename, i2, splitOnTokens[i])) {
                            break;
                        }
                        i2 += splitOnTokens[i].length();
                        z = false;
                    }
                    i++;
                }
            }
            if (i == splitOnTokens.length && i2 == filename.length()) {
                return true;
            }
        } while (stack.size() > 0);
        return false;
    }

    static String[] splitOnTokens(String text) {
        if (text.indexOf(63) == -1 && text.indexOf(42) == -1) {
            return new String[]{text};
        }
        char[] charArray = text.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == '?' || charArray[i] == '*') {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                    sb.setLength(0);
                }
                if (charArray[i] == '?') {
                    arrayList.add("?");
                } else if (arrayList.isEmpty() || (i > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals("*"))) {
                    arrayList.add("*");
                }
            } else {
                sb.append(charArray[i]);
            }
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
