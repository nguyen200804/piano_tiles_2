package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        String property;
        int i = 3;
        String str = "df";
        try {
            property = System.getProperty("os.name");
        } catch (Exception e) {
            i = -1;
        }
        if (property == null) {
            throw new IOException("os.name not found");
        }
        String lowerCase = property.toLowerCase(Locale.ENGLISH);
        if (lowerCase.indexOf("windows") != -1) {
            i = 1;
        } else if (lowerCase.indexOf("linux") != -1 || lowerCase.indexOf("mpe/ix") != -1 || lowerCase.indexOf("freebsd") != -1 || lowerCase.indexOf("irix") != -1 || lowerCase.indexOf("digital unix") != -1 || lowerCase.indexOf("unix") != -1 || lowerCase.indexOf("mac os x") != -1) {
            i = 2;
        } else if (lowerCase.indexOf("sun os") != -1 || lowerCase.indexOf("sunos") != -1 || lowerCase.indexOf("solaris") != -1) {
            str = "/usr/xpg4/bin/df";
        } else if (lowerCase.indexOf("hp-ux") == -1 && lowerCase.indexOf("aix") == -1) {
            i = 0;
        }
        OS = i;
        DF = str;
    }

    @Deprecated
    public static long freeSpace(String path) throws IOException {
        return INSTANCE.freeSpaceOS(path, OS, false, -1L);
    }

    public static long freeSpaceKb(String path) throws IOException {
        return freeSpaceKb(path, -1L);
    }

    public static long freeSpaceKb(String path, long timeout) throws IOException {
        return INSTANCE.freeSpaceOS(path, OS, true, timeout);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long timeout) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), timeout);
    }

    long freeSpaceOS(String path, int os, boolean kb, long timeout) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (os) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return kb ? freeSpaceWindows(path, timeout) / 1024 : freeSpaceWindows(path, timeout);
            case 2:
                return freeSpaceUnix(path, kb, false, timeout);
            case 3:
                return freeSpaceUnix(path, kb, true, timeout);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceWindows(String path, long timeout) throws IOException {
        String path2 = FilenameUtils.normalize(path, false);
        if (path2.length() > 0 && path2.charAt(0) != '\"') {
            path2 = "\"" + path2 + "\"";
        }
        List<String> performCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + path2}, Integer.MAX_VALUE, timeout);
        for (int size = performCommand.size() - 1; size >= 0; size--) {
            String str = performCommand.get(size);
            if (str.length() > 0) {
                return parseDir(str, path2);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + path2 + "'");
    }

    long parseDir(String line, String path) throws IOException {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int length = line.length() - 1;
        while (true) {
            if (length < 0) {
                i = length;
                i2 = 0;
                break;
            }
            if (Character.isDigit(line.charAt(length))) {
                i2 = length + 1;
                i = length;
                break;
            }
            length--;
        }
        while (true) {
            if (i < 0) {
                i3 = 0;
                break;
            }
            char charAt = line.charAt(i);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != '.') {
                i3 = i + 1;
                break;
            }
            i--;
        }
        if (i < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + path + "'");
        }
        StringBuilder sb = new StringBuilder(line.substring(i3, i2));
        while (i4 < sb.length()) {
            if (sb.charAt(i4) == ',' || sb.charAt(i4) == '.') {
                sb.deleteCharAt(i4);
                i4--;
            }
            i4++;
        }
        return parseBytes(sb.toString(), path);
    }

    long freeSpaceUnix(String path, boolean kb, boolean posix, long timeout) throws IOException {
        StringTokenizer stringTokenizer;
        if (path.length() == 0) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String str = kb ? "-k" : "-";
        if (posix) {
            str = str + "P";
        }
        List<String> performCommand = performCommand(str.length() > 1 ? new String[]{DF, str, path} : new String[]{DF, path}, 3, timeout);
        if (performCommand.size() < 2) {
            throw new IOException("Command line '" + DF + "' did not return info as expected for path '" + path + "'- response was " + performCommand);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(performCommand.get(1), " ");
        if (stringTokenizer2.countTokens() < 4) {
            if (stringTokenizer2.countTokens() == 1 && performCommand.size() >= 3) {
                stringTokenizer = new StringTokenizer(performCommand.get(2), " ");
            } else {
                throw new IOException("Command line '" + DF + "' did not return data as expected for path '" + path + "'- check path is valid");
            }
        } else {
            stringTokenizer2.nextToken();
            stringTokenizer = stringTokenizer2;
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), path);
    }

    long parseBytes(String freeSpace, String path) throws IOException {
        try {
            long parseLong = Long.parseLong(freeSpace);
            if (parseLong < 0) {
                throw new IOException("Command line '" + DF + "' did not find free space in response for path '" + path + "'- check path is valid");
            }
            return parseLong;
        } catch (NumberFormatException e) {
            throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected for path '" + path + "'- check path is valid", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.List<java.lang.String> performCommand(java.lang.String[] r10, int r11, long r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }

    Process openProcess(String[] cmdAttribs) throws IOException {
        return Runtime.getRuntime().exec(cmdAttribs);
    }
}
