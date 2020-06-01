package by.kas.web.service;

import by.kas.web.entity.Roster;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Repository
public class QueryService {
    @PersistenceContext
    private EntityManager entityManager;

    @SuppressWarnings("unchecked")
    @Transactional
    public List execute(String query) {
        List<Object> resultList = new ArrayList<>();
        try {
            if (query.contains("SELECT")) {
                List<Object[]> queryResult = entityManager.createNativeQuery(query).getResultList();
                for (Object[] arr : queryResult) {
                    resultList.add(new Roster(arr));
                }
            } else {
                entityManager.createNativeQuery(query).executeUpdate();
                String operationType = query.substring(0, query.indexOf(" "));
                resultList.add(operationType + " successful");
            }
        } catch (PersistenceException exception) {
            resultList.add(exception.getLocalizedMessage());
        }
        return resultList;
    }
}
