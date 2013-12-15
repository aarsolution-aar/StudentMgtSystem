package com.aarsolution.sms

import com.aarsolution.sms.enums.MaritalStatus
import com.aarsolution.sms.enums.Nationality
import com.aarsolution.sms.enums.Sex

abstract class Person {
    String firstName
    String lastName
    Date dob
    MaritalStatus maritalStatus
    Sex sex
    Nationality nationality
    Integer passportNo
    String presentAddress
    String permanentAddress
    String telephoneNo
    String mobileNo
    String email

    static constraints = {
        lastName nullable: true
        dob nullable: true
        maritalStatus nullable: true
        sex nullable: true
        nationality nullable: true
        passportNo nullable: true
        presentAddress nullable: true
        permanentAddress nullable: true
        telephoneNo nullable: true
        mobileNo nullable: true
        email nullable: true, email: true
    }
}
