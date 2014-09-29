package worksBeyond.repository;

import org.springframework.data.repository.CrudRepository;

import worksBeyond.model.User;

public interface UserRepository extends CrudRepository<User, Integer>{
	
	User findByEmail(String email);
	
	

}
