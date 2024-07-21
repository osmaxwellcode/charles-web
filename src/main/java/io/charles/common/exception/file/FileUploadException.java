package io.charles.common.exception.file;

import java.io.PrintStream;
import java.io.PrintWriter;

/**
 * Created on 2022/8/13.
 *
 * @author charles
 */
public class FileUploadException extends Exception {
    private static final long serialVersionUID = 8881893724388807504L;
    private final Throwable cause;

    public FileUploadException() {
        this((String) null, (Throwable) null);
    }

    public FileUploadException(String msg) {
        this(msg, (Throwable) null);
    }

    public FileUploadException(String msg, Throwable cause) {
        super(msg);
        this.cause = cause;
    }

    @Override
    public void printStackTrace(PrintStream stream) {
        super.printStackTrace(stream);
        if (this.cause != null) {
            stream.println("Caused by:");
            this.cause.printStackTrace(stream);
        }

    }

    @Override
    public void printStackTrace(PrintWriter writer) {
        super.printStackTrace(writer);
        if (this.cause != null) {
            writer.println("Caused by:");
            this.cause.printStackTrace(writer);
        }

    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
