package DeveloperTest.DeveloperTest.Controller;
import DeveloperTest.DeveloperTest.Domain.Personality;
import DeveloperTest.DeveloperTest.Repository.PersonalityResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/result")
public class PersonalityController {
    @Autowired
    private PersonalityResultRepository repository;

    @PostMapping("/save")
    public ResponseEntity<?> saveResult(@RequestBody Personality result) {
        repository.save(result);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    public void setRepository(PersonalityResultRepository repository) {
        this.repository = repository;
    }
}
