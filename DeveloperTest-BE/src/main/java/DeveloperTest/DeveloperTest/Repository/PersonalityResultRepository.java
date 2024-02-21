package DeveloperTest.DeveloperTest.Repository;

import DeveloperTest.DeveloperTest.Domain.Personality;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonalityResultRepository extends JpaRepository<Personality, Long> {
}
