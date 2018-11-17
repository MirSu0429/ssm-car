package com.ssm.converter;

import java.util.Date;

import org.springframework.core.convert.converter.Converter;

import com.ssm.util.DateUtil;

public class DateConverter implements Converter<String, Date> {

	@Override
	public Date convert(String arg0) {
		return DateUtil.stringToDate(arg0);
	}

}
