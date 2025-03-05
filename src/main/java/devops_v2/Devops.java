package devops_v2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Devops {

    @GetMapping("/")
    public String hello() {
        return "Hello this is Devops project";
    }
}
