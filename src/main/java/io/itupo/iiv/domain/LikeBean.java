package io.itupo.iiv.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LikeBean {
	private String table;
	private int postId;
	private String username;
	
	public LikeBean(String table, int postId) {
		this.table = table;
		this.postId = postId;
	}
}
