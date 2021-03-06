package hot.member.domain;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="estimate")
@SecondaryTables({
	@SecondaryTable(name = "kitchen", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no")),
	@SecondaryTable(name = "floor", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no")),
	@SecondaryTable(name = "linoleum", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no")),
	@SecondaryTable(name = "papering", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no")),
	@SecondaryTable(name = "tile", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no")),
	@SecondaryTable(name = "bathroom", pkJoinColumns = @PrimaryKeyJoinColumn(name = "est_no"))
})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Estimate {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "est_no")
	private Integer estNo;
	
	@ManyToOne
	@JoinColumn(name="member_no")
	private Member member;
	
	@Column(name = "est_description")
	private String estDescription;
	@Column(name = "est_regdate")
	private Timestamp estRegdate;
	@Column(name="est_status")
	private int estStatus;
	
	@Embedded
	private Kitchen kitchen;
	@Embedded
	private Floor floor;
	@Embedded
	private Linoleum linoleum;
	@Embedded
	private Papering papering;
	@Embedded
	private Tile tile;
	@Embedded
	private Bathroom bathromm;


}
