package worksBeyond.model;
import java.sql.Blob;
import java.sql.Date;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
 
@Entity
@Table(name="documents")
public class Document {
     
    @Id
    @GeneratedValue
    @Column(name="id")
    private Integer id;
 
    @Column(name="name")
    private String name;
    
    @Column(name="author")
    private Integer author;
    
    @Column(name="excerpt")
    private String excerpt;
 
    @Column(name="description")
    private String description;
 
    @Column(name="filename")
    private String filename;
 
    @Column(name="content")
    @Lob
    private byte[] content;
     
    @Column(name="content_type")
    private String contentType;
     
    @Column(name="created")
    private Date created;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Integer getAuthor() {
		return author;
	}

	public void setAuthor(Integer author) {
		this.author = author;
	}

	public String getExcerpt() {
		return excerpt;
	}

	public void setExcerpt(String excerpt) {
		this.excerpt = excerpt;
	}
     
    //Getter and Setter methods
}