//
//  ViewController.swift
//  ClassesAndStruct
//
//  Created by berdy on 06.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Создаем экземпляр учителя
        let teacher1 = Teacher(id: 1, firstName: "John", lastName: "Doe")
        
        // Добавляем предмет "Math" с оценкой "A"
        teacher1.addSubject(subjectName: "Math", grade: "A")
        
        // Выводим добавленные предметы
        print(teacher1.subjectsTaught)
        
        
        print ("")
        
        
        let teacher2 = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let student2 = Student(id: 101, name: "Alice", lastName: "Smith", age: 16)
        
        // Добавляем предмет "Math" и ученика к учителю
        teacher2.addSubject(subjectName: "Math", grade: "A")
        teacher2.studentsTaught.append(student2)
        
        // Устанавливаем оценку ученику по предмету "Math" с использованием метода setGrade
        teacher2.setGrade(for: student2, in: "Math", with: "B")
        
        
        print("")
        
        
        let teacher3 = Teacher(id: 1, firstName: "John", lastName: "Doe")
        
        // Добавляем предметы
        teacher3.addSubject(subjectName: "Math", grade: "A")
        teacher3.addSubject(subjectName: "English", grade: "B")
        
        // Получаем и выводим информацию об учителе
        let teacherInfo = teacher3.getTeacherInfo()
        print(teacherInfo)
        
        
        
        

////MARK: - ДЗ
////Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
//
////Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
//
////Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.

        var student = Student(id: 101, name: "Alice", lastName: "Smith", age: 16)
        
        // Выводим текущий возраст и имя студента
        print("Текущий возраст студента: \(student.age)")
        print("Текущее имя студента: \(student.name)")
        
        // Изменяем возраст и имя студента с использованием методов
        student.setAge(17)
        student.setName("Bob")
        
        // Выводим обновленный возраст и имя студента
        print("Обновленный возраст студента: \(student.age)")
        print("Обновленное имя студента: \(student.name)")
        
        
        
////Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
        
        
        
        var teacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        
        // Выводим текущее имя преподавателя
        print("Текущее имя преподавателя: \(teacher.firstName)")
        
        // Изменяем имя преподавателя с использованием методов
        teacher.setName("Jane")
        
        // Выводим обновленное имя преподавателя
        
        print("Обновленное имя преподавателя: \(teacher.firstName)")
        
        // Изменяем предмет, который преподает преподаватель
        teacher.setSubjectTaught(subjectName: "Math", grade: "A")
        
        // Выводим информацию о предметах, которые преподает преподаватель
        for subject in teacher.subjectsTaught {
            print("Преподаватель \(teacher.firstName) \(teacher.lastName) преподает \(subject.subjectName) с оценкой \(subject.grade)")
        }
        
        
        
//// Итог: Создайте несколько экземпляров студентов, преподавателей. Добавьте студентам предметы и установите оценки.
        ///
        ///
//// Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
////У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
//
//// Создание учителя
////let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
////mathTeacher.addSubjectTaught(subjectName: "Math")
//
//// Создание студентов
////let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
////let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
//
//// Связывание студентов с учителем
////student1.assignTeacher(teacher: mathTeacher)
////student2.assignTeacher(teacher: mathTeacher)
//
//// Учитель ставит оценки студентам по предметам
////mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
////mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")

        
    }
}
