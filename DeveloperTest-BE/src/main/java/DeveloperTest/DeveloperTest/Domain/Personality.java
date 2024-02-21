package DeveloperTest.DeveloperTest.Domain;
import jakarta.persistence.*;
import lombok.Getter;

    @Entity
    @Getter
    @Table(name = "personality_results")
    public class Personality {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "personality")
        private String personality;

        public void setPersonality(String typeA) {
        }
    }