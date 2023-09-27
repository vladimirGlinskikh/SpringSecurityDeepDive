package kz.zhelezyaka.oauth2server.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "token_settings")
@Getter
@Setter
public class ClientTokenSettings {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "access_token_ttl")
    private int accessTokenTTL;

    private String type;

    @OneToOne
    private Client client;
}
