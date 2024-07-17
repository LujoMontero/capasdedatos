package org.example.desafiocapabd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {

    private int userId;
    private String name;
    private String rut;
    private String email;
    private String phone;
    private String address;
    private String contact;
    private String phone2;

    public UserDTO(String name, String rut, String email, String phone, String address, String contact, String phone2) {
        this.name = name;
        this.rut = rut;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.contact = contact;
        this.phone2 = phone2;
    }
}