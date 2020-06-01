package by.kas.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "queries")
public class Query {
    @Id
    @Column(name = "id", length = 10)
    private long id;

    @Column(name = "user")
    private String user;

    @Column(name = "query")
    private String query;

    @Column(name = "result")
    private String result;

    public Query(){

    }

    public Query(Object[] array){
        id = (Integer)array[0];
        user = (String)array[1];
        query = (String)array[2];
        result = (String)array[3];
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
