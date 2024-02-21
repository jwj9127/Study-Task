package DeveloperTest.DeveloperTest;
import DeveloperTest.DeveloperTest.Domain.Personality;
import DeveloperTest.DeveloperTest.Repository.PersonalityResultRepository;
import DeveloperTest.DeveloperTest.Controller.PersonalityController;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class PersonalityControllerTest {

    private PersonalityController controller;

    @Mock
    private PersonalityResultRepository repository;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.initMocks(this);
        controller = new PersonalityController();
        controller.setRepository(repository);
    }

    @Test
    public void testSaveResult() {
        Personality result = new Personality();
        result.setPersonality("Type A");

        when(repository.save(result)).thenReturn(result);

        ResponseEntity<?> responseEntity = controller.saveResult(result);

        verify(repository, times(1)).save(result);
        assertEquals(HttpStatus.CREATED, responseEntity.getStatusCode());
    }
}
