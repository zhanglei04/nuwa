/**
 * Copyright(c) 2011-2012 by LeiYiTech Inc. All Rights Reserved
 */
package com.genesis.nuwa.util;

import com.genesis.nuwa.model.auth.UserInfo;

/**
 * @author ijay
 */
public class SecurityUtils {

	/**
	 * 获取UserInfo对象，此对象只封装了user.ID，方便做外键关联
	 *
	 * @return UserInfo对象，可为null
	 */
	public static UserInfo getUserInfo() {

		UserInfo userInfo = new UserInfo();
		userInfo.setLoginName("sysadm");
		userInfo.setRealName("梅长苏");
		userInfo.setOrgCode("AAAAAAAA-A");

		return userInfo;
	}

	/*
	 * public static User getUserFromPrincipal(Principal principal) { UserDetailsWrapper w =
	 * SecurityUtils.populateUserDetails(principal); if (w != null) { return w.getUser(); }
	 * 
	 * return null; }
	 *//**
	 * 获取UserInfo对象，此对象只封装了user.ID，方便做外键关联
	 *
	 * @param principal
	 * @return UserInfo对象，可为null
	 */
	/*
	 * public static UserInfo getUserInfoFromPrincipal(Principal principal) { User user =
	 * SecurityUtils.getUserFromPrincipal(principal);
	 * 
	 * if (user == null) { return null; }
	 * 
	 * UserInfo u = new UserInfo(user.getId()); u.setName(user.getName());
	 * u.setTitle(user.getTitle()); UserGroup group = user.getGroup(); if (group != null) {
	 * u.setGroup(new UserGroupInfo(group.getId())); }
	 * 
	 * return u; }
	 * 
	 * public static String getIPFromPrincipal(Principal principal) { UserDetailsWrapper w =
	 * SecurityUtils.populateUserDetails(principal); if (w != null) { return w.getIp(); }
	 * 
	 * return null; }
	 * 
	 * private static UserDetailsWrapper populateUserDetails(Principal principal) { Authentication
	 * auth = (Authentication) principal; if (auth != null) { return (UserDetailsWrapper)
	 * auth.getPrincipal(); }
	 * 
	 * return null; }
	 * 
	 * public static void invalidateUser(Authentication auth) {
	 * SecurityContextHolder.clearContext(); ((UserDetailsWrapper)
	 * auth.getPrincipal()).setCredentialsNonExpired(false); }
	 * 
	 * public static Set<String> getUserPrivileges(Principal p) { UserDetailsWrapper w =
	 * SecurityUtils.populateUserDetails(p); Collection<? extends GrantedAuthority> authorities =
	 * w.getAuthorities();
	 * 
	 * Set<String> ret = new HashSet<>(); for (GrantedAuthority a : authorities) {
	 * ret.add(a.getAuthority()); }
	 * 
	 * return ret; }
	 */
}
