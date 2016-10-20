package io.itupo.iiv.domain;

import java.sql.Date;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CommentBean {
	private int commentId;
	private String content;
	private String name;
	private Date writeDate;
	private int parent;
	private int indent;
	private int step;
	private int boardId;
}
