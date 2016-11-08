package com.ssh.util;

import java.util.Arrays;

import org.apache.log4j.Logger;

public class JDBCLogMessage implements ParameterizedMessage {
	private static Logger log = Logger.getLogger(JDBCLogMessage.class);

	private static final long serialVersionUID = -4354231468586096938L;

	private Object[] params;

    public JDBCLogMessage(Object... params) {
        this.params = params;
    }

    public Object[] getParameters() {
        return this.params;
    }

    public Object getParameter(int index) throws IndexOutOfBoundsException {
        return this.params[index];
    }

    public int getParameterCount() {
        return this.params.length;
    }

    @Override
    public String toString() {
        return Arrays.toString(this.params);
    }


}
