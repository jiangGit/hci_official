package org.scauhci.official.bean;

import java.util.List;

import org.nutz.dao.entity.annotation.*;

@Table("message")
public class Message {
	
	public static final int TYPE_MEETING_NOTICE = 0;
	public static final int TYPE_MEETING_PROJECT_NOTICE = 1;

	@Id
	@Column("id")
	private int id;
	@Column("type")
	private int type;
	@Column("content")
	private String content;
	@Column("date")
	private java.util.Date date;
	@Column("member_id")
	private int memberId;

	@One(target = Member.class, field = "memberId")
	private Member member;

	@ManyMany(target = Member.class, relation = "member_message", from = "message_id", to = "member_id")
	private List<Member> members;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public java.util.Date getDate() {
		return date;
	}

	public void setDate(java.util.Date date) {
		this.date = date;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<Member> getMembers() {
		return members;
	}

	public void setMembers(List<Member> members) {
		this.members = members;
	}

}