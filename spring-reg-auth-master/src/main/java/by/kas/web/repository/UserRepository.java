package by.kas.web.repository;

import by.kas.web.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findByGoogleUsername(String googleUsername);
}
