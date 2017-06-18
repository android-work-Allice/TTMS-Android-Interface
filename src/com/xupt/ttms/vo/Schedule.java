package com.xupt.ttms.vo;

import java.util.Date;

/**
 * @author WangFeng
 * @date 2017年6月3日 下午12:22:51
 * @version 1.0
 */

public class Schedule {
	private Integer scheId;
	private StdioInfo stdInfo;
	private PlayInfo playInfo;
	private Date scheStartTime;
	private Date scheEndTime;
	private Integer scheStatus;
	
	public Integer getScheId() {
		return scheId;
	}

	public void setScheId(Integer scheId) {
		this.scheId = scheId;
	}

	public StdioInfo getStdInfo() {
		return stdInfo;
	}

	public void setStdInfo(StdioInfo stdInfo) {
		this.stdInfo = stdInfo;
	}

	public PlayInfo getPlayInfo() {
		return playInfo;
	}

	public void setPlayInfo(PlayInfo playInfo) {
		this.playInfo = playInfo;
	}

	public Date getScheStartTime() {
		return scheStartTime;
	}

	public void setScheStartTime(Date scheStartTime) {
		this.scheStartTime = scheStartTime;
	}

	public Date getScheEndTime() {
		return scheEndTime;
	}

	public void setScheEndTime(Date scheEndTime) {
		this.scheEndTime = scheEndTime;
	}

	public Integer getScheStatus() {
		return scheStatus;
	}

	public void setScheStatus(Integer scheStatus) {
		this.scheStatus = scheStatus;
	}

}
