//
//  Student.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Student {
    var id: Int
    var name: String
    var lastName: String
    var age: Int
    var subjects: [Subject]
    var teacher: Teacher?
    
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    
    
    // Метод для добавления предмета // у студента!//
    func addSubjectStudent(subjectName: String, grade: String) {
        let newSubject = Subject(subjectName: subjectName, grade: grade)
        subjects.append(newSubject)
    }
    
    
    // Метод для установки оценки
    func setGrade(for subjectName: String, with grade: String) {
        // Проверяем, есть ли предмет в массиве предметов ученика
        if let subjectIndex = subjects.firstIndex(where: { $0.subjectName == subjectName }) {
            subjects[subjectIndex].grade = grade
            print("Оценка \(grade) установлена для предмета \(subjectName) у ученика \(name)")
        } else {
            print("У ученика \(name) нет предмета \(subjectName)")
        }
    }
    
    
    // Метод для изменения возраста студента
    func setAge(_ newAge: Int) {
        age = newAge
    }
    
    // Метод для установки имени студента
    
    func setName(_ newName: String) {
        name = newName
    }
    
    // Метод для связывания студента с учителем
    func assignTeacher(_ teacher: Teacher) {
        self.teacher = teacher
    }
    
    
    // Метод для получения информации о студенте и его предметах
    func getStudentInfo() -> String {
        var info = "Студент: \(name) \(lastName)\n"
        
        if subjects.isEmpty {
            info += "Не изучает ни одного предмета"
        } else {
            info += "Предметы, которые изучает:\n"
            for subject in subjects {
                info += "- \(subject.subjectName), Оценка: \(subject.grade)\n"
            }
        }
        if let assignedTeacher = teacher {
            info += "Связан с учителем: \(assignedTeacher.firstName) \(assignedTeacher.lastName)"
        } else {
            info += "Не связан с учителем"
        }
        
        return info
    }
}
