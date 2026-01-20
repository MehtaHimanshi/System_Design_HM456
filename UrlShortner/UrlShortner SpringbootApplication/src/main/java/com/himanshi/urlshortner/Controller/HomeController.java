package com.himanshi.urlshortner.Controller;

import com.himanshi.urlshortner.domain.entities.ShortUrl;
import com.himanshi.urlshortner.domain.repositories.ShortUrlRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    private final ShortUrlRepository shortUrlRepository;

    public HomeController(ShortUrlRepository shortUrlRepository) {
        this.shortUrlRepository = shortUrlRepository;
    }

    @GetMapping("/")
    public String home(Model model) {
        List<ShortUrl> shortUrls = shortUrlRepository.findPublicShortUrls();

        model.addAttribute("shortUrls", shortUrls);
        model.addAttribute("baseUrl", "http://localhost:8080");

        return "index";
    }
}
