package worksBeyond.repository;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import worksBeyond.model.Document;

public interface DocumentRepository extends CrudRepository<Document, Integer>{
	
	//List<Document> findByTitle(String title);
	
	Document findById(Integer id);
	
	 List<Document> findAll();
	//used to search for the document name, author, excerpt, or description 
	 @Query("SELECT d from Document d where d.name like %?1% or d.author like %?1% "
	 		+ "or d.excerpt like %?1% or d.description like %?1%")
	 List<Document> findByNames(String publicationName);
	

}
