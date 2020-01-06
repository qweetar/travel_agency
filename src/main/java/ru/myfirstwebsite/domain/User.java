package ru.myfirstwebsite.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import ru.myfirstwebsite.domain.enums.Role;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.Set;

@Entity
@Table(name = "usr")
@Data
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id")
  private Long id;

  @Column(name = "username")
  @NotBlank(message = "Username cannot be empty")
  private String userName;

  @Column(name = "email")
  @Email(message = "Email is not correct")
  @NotBlank(message = "Email cannot be empty")
  private String email;

  @Column(name = "login")
  private String login;

  @Column(name = "password")
  @NotBlank(message = "Password cannot be empty")
  private String pass;

  @Transient
  @NotBlank(message = "Password confirmation cannot be empty")
  private String pass2;

  @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
  @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
  @Enumerated(EnumType.STRING)
  private Set<Role> roles;

  @ManyToMany(mappedBy = "users",
          fetch = FetchType.EAGER,
          cascade = {
          CascadeType.PERSIST,
          CascadeType.MERGE
  })
  @ToString.Exclude
  @EqualsAndHashCode.Exclude
  private Set<Tour> tours;

  @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
  @ToString.Exclude
  @EqualsAndHashCode.Exclude
  private Set<Review> reviews;

}
