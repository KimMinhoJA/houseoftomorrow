package hot.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import hot.member.domain.QNACategory;

public interface QNACategoryRepository extends JpaRepository<QNACategory, Integer> {

}
