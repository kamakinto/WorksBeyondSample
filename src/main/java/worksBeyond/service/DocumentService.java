package worksBeyond.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import worksBeyond.repository.DocumentRepository;
import worksBeyond.model.Document;


@Service
@Transactional
public class DocumentService {
	
	@Autowired
	private DocumentRepository documentRepository;
	
	public void save(Document document){
		documentRepository.save(document);
	}
	
	public void delete(int documentId){
		documentRepository.delete(documentId);
	}
	
	public Document get(Integer id){
		return documentRepository.findById(id);
	
	}
	
	public List<Document> list(){
		List<Document> documents = null;
		
		try{
			documents = documentRepository.findAll();
			System.out.println("List of Documents"+ documents.toString());
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return documents;
	}
	
	
	public List<Document> searchCriteria(String publicationName){
		List<Document> documents = null;
		
		try{
			documents = documentRepository.findByNames(publicationName);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return documents;
	}
}
