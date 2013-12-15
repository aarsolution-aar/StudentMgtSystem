package com.aarsolution.sms

import com.aarsolution.sms.enums.Department
import com.aarsolution.sms.enums.Designation
import com.aarsolution.sms.enums.MaritalStatus
import com.aarsolution.sms.enums.Nationality
import com.aarsolution.sms.enums.Sex
import com.aarsolution.sms.enums.StaffType
import com.aarsolution.sms.enums.WorkingMode

class Staff {

    String firstName
    String lastName
    Department department
    Designation designation
    Date dob
    MaritalStatus maritalStatus
    Sex sex
    Nationality nationality
    Integer passportNo
    StaffType staffType
    WorkingMode workingMode
    String presentAddress
    String permanentAddress
    String telephoneNo
    String mobileNo
    String email
    Date joiningDate


    static constraints = {
        lastName nullable: true
        department nullable: true
        designation nullable: true
        dob nullable: true
        maritalStatus nullable: true
        sex nullable: true
        nationality nullable: true
        passportNo nullable: true
        staffType nullable: true
        workingMode nullable: true
        presentAddress nullable: true
        permanentAddress nullable: true
        telephoneNo nullable: true
        mobileNo nullable: true
        email nullable: true, email: true
        joiningDate nullable: true

    }
}
