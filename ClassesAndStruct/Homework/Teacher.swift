//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    var id: Int
    var firstName: String
    var lastName: String
    var subjectsTaught: [Subject]
    var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    
   
    // Метод для изменения имени преподавателя
    func setName(_ newName: String) {
        firstName = newName
    }
    
    
    // Метод для добавления предмета, который ведет учитель
    
    func addSubject(subjectName: String, grade: String) {
        let newSubject = Subject(subjectName: subjectName, grade: grade)
        subjectsTaught.append(newSubject)
    }
    
    
    // Метод для установки оценки ученику по определенному предмету
    
    func setGrade(for student: Student, in subjectName: String, with grade: String) {
        // Предполагается, что учитель преподает предмет с именем subjectName
        // и ученик student изучает этот предмет
        
        // Находим предмет в массиве предметов, которые ведет учитель
        if let subject = subjectsTaught.first(where: { $0.subjectName == subjectName }) {
            // Проверяем, есть ли у ученика такой предмет
            if student.subjects.contains(where: { $0.subjectName == subjectName }) {
                // Устанавливаем оценку ученику
                print("Оценка \(grade) установлена для ученика \(student.name) по предмету \(subjectName)")
            } else {
                print("Ученик \(student.name) не изучает предмет \(subjectName)")
            }
        } else {
            print("Учитель не ведет предмет \(subjectName)")
        }
    }
    
    // Метод для изменения предмета, который преподает преподаватель
    func setSubjectTaught(subjectName: String, grade: String) {
        // Проверяем, есть ли такой предмет у преподавателя
        if let index = subjectsTaught.firstIndex(where: { $0.subjectName == subjectName }) {
            subjectsTaught[index].grade = grade
            print("Предмет \(subjectName) обновлен у преподавателя \(firstName) \(lastName)")
        } else {
            // Если предмет не найден, добавляем новый предмет
            let newSubject = Subject(subjectName: subjectName, grade: grade)
            subjectsTaught.append(newSubject)
            print("Добавлен новый предмет \(subjectName) преподавателю \(firstName) \(lastName)")
        }
    }

    
    
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    
    func getTeacherInfo() -> String {
        var info = "Учитель: \(firstName) \(lastName)\n"
        
        if subjectsTaught.isEmpty {
            info += "Не ведет ни одного предмета"
        } else {
            info += "Предметы, которые ведет:\n"
            for subject in subjectsTaught {
                info += "- \(subject.subjectName)\n"
            }
        }
        
        return info
    }  
}
