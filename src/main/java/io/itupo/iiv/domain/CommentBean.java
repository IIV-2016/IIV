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
}