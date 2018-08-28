package com.insurance.domain;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.text.SimpleDateFormat;
import java.util.Date;

@Getter
@Setter
@EqualsAndHashCode
@ToString
public class UserCreateForm {
    @NotEmpty
    private String name ="";

    @NotEmpty
    private String surname ="";

    @NotEmpty
    private String email = "";

    @NotEmpty
    private String password = "";

    @NotEmpty
    private String passwordRepeated = "";

    @NotNull
    private Role role = Role.USER;

    @NotNull
    private Date dateOfBirth;


   @NotNull
    private Gender gender;

    @NotEmpty
    private Long phone;

    @NotEmpty
    private String avatar = "";


}