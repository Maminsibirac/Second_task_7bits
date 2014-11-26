use OmSU;

INSERT INTO `Department`(id, name, boss)
VALUES
    (1, 'ИМИТ', 'Volf Messing'),
    (2, 'Физический', 'Mack Duck'),
    (3, 'ФКН', 'Edvard Stick');


INSERT INTO `Group`(id, name, department_id)
VALUES
    (1, 'ММ-01', 1),
    (2, 'МР-01', 1),
    (3, 'СБС-201-О', 3),
    (4, 'СББ-101-О', 3),
    (5, 'Ф-05-О', 2);
    
    


INSERT INTO `Chair`(id, name, department_id)
VALUES
    (1, 'Прикладная информатика', 1),
    (2, 'Информационная безопасность', 3),
    (3, 'Атомная физика', 2),
    (4, 'Прикладная математика', 1),
    (5, 'ЭВМ', 3);


INSERT INTO `Student`(id, first_name, last_name, is_head, department_id, chair_id, group_iden)
VALUES
    (1, 'Richard', 'Butler', false, 1, 4, 1),
    (2, 'Gladys ', 'Kessler', true, 1, 1, 5),
    (3, 'Steven', 'Jordan', false, 1, NULL, 1),

    (4, 'Ricardo', 'Sanchez', true, 3, 2, 3),
    (5, 'Janis', 'Karpin', false, 3, 5, 4),
    (6, 'Ivan', 'Frederick', false, 3, 2, 4),

    (7, 'Javal ', 'Davis', false, 1, 1, 5),
    (8, 'Charles', 'Graner', false, 1,4, 5),
    (9, 'Sabrina', 'Harman', true, 1, NULL, 1),

    (10, 'Lynndie', 'England', true, 2, 3, 2),
    (11, 'Israel', 'Rivera', false, 2, 3, 2),
    (12, 'Walter', 'Fisher', false, 2, NULL, 2),

    (13, 'Joseph', 'Weaver', true, 3, 5, 4),
    (14, 'Paul', 'Hart', false, 3, 2, 3),
    (15, 'Mitchell', 'Bishop', false, 3, NULL, 3);
    
    
