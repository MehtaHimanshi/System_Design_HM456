package com.himanshi.urlshortner.domain.repositories;

import com.himanshi.urlshortner.domain.entities.ShortUrl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ShortUrlRepository extends JpaRepository<ShortUrl, Long> {

    @Query("""
        select s from ShortUrl s
        where s.isPrivate = false
        order by s.createdAt desc
    """)
    List<ShortUrl> findPublicShortUrls();
}
