package com.springframework.portfolio.security;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.springframework.portfolio.common.CommandLogger;
import com.springframework.portfolio.common.CommandService;

import java.util.Map;

@Service
public class CertificationService {

	@Autowired
	private CommandService commandService;

	@Autowired
	private CommandSecurity commandSecurity;

	/**
	 * 사용자 인증
	 * @param mberId
	 * @param mberPw
	 * @param commonMap
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "static-access" })
	public boolean login(String mberId, String mberPw, Map map) {
		try {
			//DB에서 사용자 정보 가져오기
			Map<String, Object> userInfo = commandService.selectMap("lo_login.selectCertificationUserInfo", map);
			if (userInfo != null) {
				String storedHashedPassword = (String) userInfo.get("MBER_PW"); //암호화된 비밀번호 가져오기
				String inputHashedPassword = commandSecurity.encrypt(mberPw); //입력받은 비밀번호 암호화
				return storedHashedPassword.equals(inputHashedPassword); //비교
			}
		} catch (Exception e) {
			CommandLogger.debug(e, this.getClass(), "login");
		}
		return false;
	}
}

