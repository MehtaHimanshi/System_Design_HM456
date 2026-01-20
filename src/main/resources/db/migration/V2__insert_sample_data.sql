INSERT INTO users (email, password, name, role)
VALUES
('admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
('himanshimehta456@gmail.com', 'secret', 'Himanshi', 'ROLE_USER');


INSERT INTO short_urls (
    short_key,
    original_url,
    created_by,
    created_at,
    expires_at,
    is_private,
    click_count
)
VALUES
('s1aed', 'https://www.sivalabs.in/code-offline-with-local-ai-ollama', 1, CURRENT_TIMESTAMP, NULL, FALSE, 0),
('hubfD', 'https://www.sivalabs.in/spring-boot-testcontainers-test-at-jet-speed', 1, CURRENT_TIMESTAMP, NULL, FALSE, 0),
('exbcn', 'https://www.sivalabs.in/running-custom-spring-initializr', 1, CURRENT_TIMESTAMP, NULL, FALSE, 0),
('edftq', 'https://www.sivalabs.in/an-email-template-of-asking-for-technical-help', 1, CURRENT_TIMESTAMP, NULL, TRUE, 0),
('tysbq', 'https://www.sivalabs.in/mastering-spring-boot-in-5-stages', 1, CURRENT_TIMESTAMP, NULL, FALSE, 0);
