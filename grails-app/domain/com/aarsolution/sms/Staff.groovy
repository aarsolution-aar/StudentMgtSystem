package com.aarsolution.sms

import com.aarsolution.sms.enums.Department
import com.aarsolution.sms.enums.Designation
import com.aarsolution.sms.enums.StaffType
import com.aarsolution.sms.enums.WorkingMode

class Staff extends Person{

    Department department
    Designation designation
    StaffType staffType
    WorkingMode workingMode
    Date joiningDate


    static constraints = {
        department nullable: true
        designation nullable: true
        staffType nullable: true
        workingMode nullable: true
        joiningDate nullable: true
    }
}
