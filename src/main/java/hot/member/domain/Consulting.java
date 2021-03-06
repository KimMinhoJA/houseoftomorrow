package hot.member.domain;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "consulting")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Consulting {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "consul_no")
	private Integer consulNo;
	
	@ManyToOne
	@JoinColumn(name = "member_no")
	private Member member;
	
	@ManyToOne
	@JoinColumn(name = "ch_no")
	private Channel channel;
	
	@Column(name = "consul_description")
	private String consulDescription;
	
	@Column(name = "consul_regdate")
	private Timestamp consulRegDate;
	
	@Column(name = "consul_title")
	private String consulTitle;
	
	@ManyToOne(optional = true)
	@JoinColumn(name = "consul_parent_no", referencedColumnName = "consul_no", nullable = true)
	private Consulting consulParentNo;
	
	@Column(name = "consul_user_decide")
	private int consulUserDecide;
	
	@Column(name = "consul_con_decide")
	private int consulConDecide;
	
	@Column(name = "consul_status")
	private int consulStatus;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "consulParentNo")
	private List<Consulting> consultChildNo;


}
