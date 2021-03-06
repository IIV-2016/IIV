package io.itupo.iiv.domain;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CommentBean {
	private int id;
	private String content;
	private String username;
	private Date writeDate;
	private int postId;
	private String table;
	
	public CommentBean(String content, String username, int postId, String table) {
		this.content = content;
		this.username = username;
		this.postId = postId;
		this.table = table;
	}
}