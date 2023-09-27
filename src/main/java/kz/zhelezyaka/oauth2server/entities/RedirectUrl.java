package kz.zhelezyaka.oauth2server.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "redirect_url")
@Getter
@Setter
public class RedirectUrl {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String url;

    @ManyToOne
    private Client client;

    public static RedirectUrl from(String url, Client client) {
        RedirectUrl redirectUrl = new RedirectUrl();

        redirectUrl.setUrl(url);
        redirectUrl.setClient(client);

        return redirectUrl;
    }
}
