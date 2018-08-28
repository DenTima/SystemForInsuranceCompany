package com.insurance.domain;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Entity
@Getter
@Setter
@EqualsAndHashCode
@ToString
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;

    @Column (name="name", nullable = false)
    private String name;

    @Column (name="surname", nullable = false)
    private String surname;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password_hash", nullable = false)
    private String passwordHash;

    @Column(name = "role", nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role;

    @Column (name = "date_of_birth")
    private Date dateOfBirth;

    @Column (name="gender", nullable = false)
    @Enumerated(EnumType.STRING)
    public Gender gender;

    @Column (name="phone")
    private Long phone;

    @Column(name ="avatar")
    private String avatar;


}
