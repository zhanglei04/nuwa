package com.genesis.nuwa.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.genesis.nuwa.vo.JqGridFilter;
import com.genesis.nuwa.vo.Pagination;
import com.genesis.nuwa.vo.QueryFilter;
import com.genesis.nuwa.vo.QueryFilterDetail;

public class BaseController {
	public static Logger logger = LoggerFactory.getLogger(BaseController.class);

	protected final static String EDIT = "edit";
	protected final static String ADD = "add";
	private static ObjectMapper objectMapper = new ObjectMapper();
	static {
		// 时间格式处理
		BaseController.objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		// 修改时区，如果不设置则
		BaseController.objectMapper.setTimeZone(TimeZone.getDefault());
		BaseController.objectMapper.configure(SerializationFeature.WRITE_ENUMS_USING_TO_STRING,
				true);
	}

	/**
	 * 构造分页集合转jqGrid
	 *
	 * @param pagination
	 *            数据集合
	 * @return
	 * @throws JsonProcessingException
	 */
	@SuppressWarnings("boxing")
	protected static String jqGridData(Pagination<?> pagination) throws JsonProcessingException {
		return BaseController.objectMapper.writeValueAsString(BaseController.buildJqGridData(
				pagination.getTotalCount(), pagination.getList(), pagination.getPage(),
				pagination.getTotalPage()));

	}

	/**
	 * 构造集合转jqGrid
	 *
	 * @param pagination
	 *            数据集合
	 * @return
	 * @throws JsonProcessingException
	 */
	@SuppressWarnings("boxing")
	protected static String jqGridData(List<?> list) throws JsonProcessingException {
		return BaseController.objectMapper.writeValueAsString(BaseController.buildJqGridData(
				list.size(), list, NumberUtils.INTEGER_ONE, NumberUtils.INTEGER_ZERO));

	}

	/**
	 * 单个对象转jqGrid
	 *
	 * @param object
	 * @return
	 * @throws JsonProcessingException
	 */
	protected static String jqGridData(Object object) throws JsonProcessingException {
		List<Object> list = new ArrayList<>();
		list.add(object);
		return BaseController.objectMapper.writeValueAsString(BaseController.buildJqGridData(
				NumberUtils.INTEGER_ONE, list, NumberUtils.INTEGER_ONE, NumberUtils.INTEGER_ONE));

	}

	/**
	 * 构造jqgrid数据
	 *
	 * @param records
	 *            记录数
	 * @param list
	 *            数据集合
	 * @param page
	 *            当前页
	 * @param total
	 *            总页数
	 * @return
	 */
	private static Map<String, Object> buildJqGridData(Integer records, List<?> list, Integer page,
			Integer total) {
		Map<String, Object> map = new HashMap<>();
		map.put("records", records);
		map.put("rows", list);
		map.put("page", page);
		map.put("total", total);
		return map;
	}

	/**
	 * 高级查询解析 针对jqgrid
	 *
	 * @param jqGridFilter
	 * @return
	 * @throws IOException
	 * @throws JsonMappingException
	 * @throws JsonParseException
	 */
	public QueryFilter buildFilter(JqGridFilter jqGridFilter) throws JsonParseException,
			JsonMappingException, IOException {
		QueryFilter filter = new QueryFilter();
		if (StringUtils.isNotBlank(jqGridFilter.getFilters())) {
			filter = BaseController.objectMapper.readValue(jqGridFilter.getFilters(),
					QueryFilter.class);
			for (QueryFilterDetail detail : filter.getRules()) {
				detail.setOp(BaseController.convertOp(detail.getOp()));
			}
		} else if (StringUtils.isNotBlank(jqGridFilter.getSearchField())) {
			List<QueryFilterDetail> rules = new ArrayList<>();
			QueryFilterDetail detail = new QueryFilterDetail();
			detail.setField(jqGridFilter.getSearchField());
			detail.setOp(BaseController.convertOp(jqGridFilter.getSearchOper()));
			detail.setData(jqGridFilter.getSearchString());
			rules.add(detail);
			filter.setRules(rules);
		}
		if (StringUtils.isNotBlank(jqGridFilter.getSidx())) {
			filter.setOrderByClause(BaseController.convertOrder(jqGridFilter.getSidx(),
					jqGridFilter.getSord()));
		}

		return filter;
	}

	private static String convertOp(String op) {
		switch (op) {
		case "eq":
			op = "=";
			break;
		case "le":
			op = "<=";
			break;
		case "ge":
			op = ">=";
			break;
		case "cn":
			op = "like";
			break;
		default:
			op = "=";
			break;
		}
		return op;
	}

	private static String convertOrder(String idx, String order) {
		switch (order) {
		case "desc":
			idx += " asc";
			break;
		default:
			idx += " desc";
			break;
		}
		return idx;
	}

	public static String toJson(boolean flag, Object msg) {
		try {
			return BaseController.objectMapper.writeValueAsString(new MapWrapper(flag, msg));
		} catch (JsonProcessingException e) {
			BaseController.logger.error("", e);
		}
		return "[{flag: 'false', msg : '操作结果转JSON失败'}]";
	}

	public static List<Integer> convertIds(String ids) {
		List<Integer> idList = null;
		if (StringUtils.isNotBlank(ids)) {
			String[] idArray = ids.split(",");
			idList = new ArrayList<>();
			for (String id : idArray) {
				idList.add(Integer.valueOf(id));
			}
		}
		return idList;
	}

	public static class MapWrapper {

		public MapWrapper(boolean flag, Object msg) {
			super();
			this.flag = flag;
			this.msg = msg;
		}

		private boolean flag;
		private Object msg;

		public boolean isFlag() {
			return this.flag;
		}

		public void setFlag(boolean flag) {
			this.flag = flag;
		}

		public Object getMsg() {
			return this.msg;
		}

		public void setMsg(Object msg) {
			this.msg = msg;
		}

	}
}
