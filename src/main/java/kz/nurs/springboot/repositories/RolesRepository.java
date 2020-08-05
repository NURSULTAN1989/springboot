package kz.nurs.springboot.repositories;

import kz.nurs.springboot.entities.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface RolesRepository extends JpaRepository<Roles,Long> {

}
