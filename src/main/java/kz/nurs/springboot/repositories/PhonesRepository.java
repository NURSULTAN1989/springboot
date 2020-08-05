package kz.nurs.springboot.repositories;

import kz.nurs.springboot.entities.Phone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface PhonesRepository extends JpaRepository<Phone, Long> {

}
