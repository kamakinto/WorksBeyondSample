package worksBeyond.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import worksBeyond.model.Contact;

public interface ContactRepository extends PagingAndSortingRepository<Contact, Integer>{
		Page<Contact> findByNameLike(Pageable pageable, String name);
}
