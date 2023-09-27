package kz.zhelezyaka.oauth2server.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.oauth2.core.AuthorizationGrantType;

@Entity
@Table(name = "grant_types")
@Getter
@Setter
public class GrandType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "grant_type")
    private String grantType;

    @ManyToOne
    private Client client;

    public static GrandType from(
            AuthorizationGrantType authorizationGrantType,
            Client client) {
        GrandType gt = new GrandType();
        gt.setGrantType(authorizationGrantType.getValue());
        gt.setClient(client);
        return gt;
    }
}
