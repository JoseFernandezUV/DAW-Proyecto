--Inserciones 

INSERT INTO Usuario (Nombre, Contraseña) VALUES
('yberumen','berumend'),
('rosaisela','ri123456'),
('josefs','jfs12345'),
('jossht','josse108'),
('cceron','carceron'),
('lmarin','drmarin'),
('superadmin','super101');

--Roles
INSERT INTO Roles (Rol) VALUES
('Estudiante'),
('Docente'),
('Invitado'),
('Administrador'),
('Superadmin');

--Permisos
INSERT INTO Permisos (Tipo) VALUES 
('Lectura'),
('Escritura'),
('Modificación'),
('Eliminación');

--tabla de roles y permisos
INSERT INTO Rolesypermisos (Rol_id, Permiso_id) VALUES
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(4,1),
(4,2),
(4,3),
(5,1),
(5,2),
(5,3),
(5,4);

--puestos
INSERT INTO Puestos (Puesto) VALUES 
('Coordinadora de la Unidad de Género de la Universidad Veracruzana'),
('Responsable del Área de Asuntos Jurídicos'),
('Área de Asuntos Jurídicos'),
('Responsable de Capacitación y Promoción para la Igualdad de Género'),
('Área de Capacitación y Promoción para la Igualdad de Género'),
('Responsable del Área Administrativa'),
('Coordinador Regional de Equidad de Género en Veracruz'),
('Representante de Equidad de Género');


--Directorio
INSERT INTO Directorio (Nombre, Telefono, Correo, Ubicacion, FKPuesto) VALUES
('Ricardo Flores Rodríguez', '', 'riflores@uv.mx', 'Veracruz-Boca del río', 7 ),
('Mtra. Yuliana Berumen Díaz', '', 'yberumen@uv.mx', 'Facultad de Ingeniería Eléctrica y Electrónica', 8),
('Mtra. Rosa Isela Solano Pérez', '', 'issolano@uv.mx', 'Facultad De Ciencias Químicas', 8),
('Mtra. Anabel Ojeda Gutiérrez', 'Ext:10532', 'anojeda@uv.mx', 'UVI Grandes Montañas',1),
('Mtra. Natalia Andreina Falfan Trujillo', 'Ext:10537', ' nfalfan@uv.mx', 'Coord. de la unidad de género', 2),
('Lic. Amira Azucena Martínez Hernández','Ext:10533','amimartinez@uv.mx','Coord. de la unidad de género',3),
('Lic. Ixchel Ortíz Vidal','Ext:10535','ixortiz@uv.mx','Coord. de la unidad de género',4),
('Mtra. Mónica Trejo Sandova','Ext.10536','motrejo@uv.mx','Coord. de la unidad de género',5),
('Lic. Maream Rosandra Ragazzo Martínez','Ext:10534','mragazzo@uv.mx','Coord. de la unidad de género',6);

INSERT INTO Redessociales (Entidad, Telefono, Correo, Facebook, Instagram, Pagina, Direccion) VALUES 
('IMMUVER', '2292001020', 'immuver@veracruzmunicipio.gob.mx', 'Immuver Oficial', 'immuver', 'pavg.veracruzmunicipio.gob.mx', 'J.M Palacios, Veracruz, Ver.'),
('Marie Stopes Veracruz', '5555430000', '', 'Marie Stopes México Oficial', 'mariestopesmexico_', 'mariestopes.org.mx', 'Av. George Washington 146, Reforma, 91919 Veracruz, Ver.'),
('Instituto Veracruzano de las mujeres', '2288171009', 'direccion.ivm@gmail.com', 'Instituto Veracruzano de las mujeres', '', 'ivermujeres.gob.mx', 'Calle José María Mata #2, Zona centro, Xalapa,Ver.'),
('Centro de Justicia para las mujeres', '2281350200', 'unidadgenerocejum@gmail.com', 'Centro de Justicia para las mujeres del estado de Veracruz', '', 'http://cejumver.gobiernodigital.gob.mx/', 'Av.Colmilleros S/N Col.Nuevo Xalapa, Xalapa, Ver.'),
('Comisión Ejecutiva Estatal De Atención A Víctimas', '2288172341', 'ugeneroceeaiv@gmail.com', 'ceav_mex', 'Comisión Ejecutiva de Atención a Víctimas', 'https://www.gob.mx/ceav', 'Calle Veracruz No.44 Fracc.Pomona Xalapa, Ver.');


INSERT INTO Tipos (Tipo) VALUES 
('Estudio'),
('Artículo'),
('Informe'),
('Libro');

--Repositorio
INSERT INTO Repositorio (Titulo, Descripcion, URL, Fecha, FKTipo,FKUsuario) VALUES 
('Protocolo para atender la violencia de género', 'El presente Protocolo tiene como propósito establecer las bases de actuación para aplicar de manera efectiva los procedimientos a fin de atender la violencia de género en las entidades académicas y dependencias de la Universidad Veracruzana.', 'https://www.uv.mx/uge/files/2021/09/Protocolo_agosto-paginas-1.pdf', '2021-09-01', 3, 2),
('Reglamento para la Igualdad de Género', 'Establece las disposiciones normativas que regulen y aseguren los principios de igualdad y no discriminación, a través de la implementación de acciones contundentes para eliminar cualquier tipo de violencia y discriminación que se pueda sufrir por razón del sexo o la condición de género y que se pueda manifestar en la Universidad Veracruzana o con motivo de actividades relacionadas con ésta.', 'https://www.uv.mx/legislacion/files/2021/01/Reglamento-Igualdad-Genero-12-2020.pdf', '2020-12-14', 3, 1),
('Estatuto de los Alumnos 2008', 'Ante la necesidad expresa de la comunidad universitaria de una redefinición de las reglas de ingreso, permanencia y egreso de los alumnos de la Universidad, acorde con los modelos y modalidades de enseñanza que en ella se imparten y en respuesta a los compromisos asumidos en el Programa de Trabajo 2005-2009, en cuanto a la adecuación permanente de la legislación universitaria, se elaboró el presente Estatuto de los alumnos 2008, respetando en todo momento los derechos y obligaciones de los mismos.', 'https://www.uv.mx/legislacion/files/2021/01/Estatuto-Alumnos-2008-12-2020.pdf', '2020-12-14', 1, 2),
('Gender Equality in Education', 'Informe de la UNESCO que examina los avances y desafíos en la promoción de la igualdad de género en la educación a nivel global.', 'https://unesdoc.unesco.org/ark:/48223/pf0000370406', '2022-01-20', 3, 5),
('Global Gender Gap Report 2022', 'Informe del Foro Económico Mundial que examina la brecha de género en varios países, destacando áreas como participación económica, educación, salud y empoderamiento político.', 'https://www.weforum.org/reports/global-gender-gap-report-2022', '2022-03-31', 1, 2),
('Mujeres y enfermedades no transmisibles', 'Información sobre la carga de enfermedades no transmisibles (ENT) en las mujeres y niñas, y las estrategias para abordarlas desde una perspectiva de género.', 'https://www.who.int/es/news-room/fact-sheets/detail/noncommunicable-diseases', '2021-03-08', 3, 5);

--repositorioroles
INSERT INTO Repositorioroles (fkidrepositorio,fkrolrepositorio)VALUES
(1,1),
(1,2),
(1,4),
(1,5),
(2,1),
(2,2),
(2,4),
(2,5),
(3,1),
(4,1),
(4,2),
(4,3),
(4,4),
(4,5),
(5,3),
(5,4),
(5,5),
(6,1),
(6,3);




--definiciones
INSERT INTO Definiciones (Termino, Definicion, Rol_fk) VALUES
('Equidad de género', 'La equidad de género se refiere a la justicia en el trato a mujeres y hombres, según sus respectivas necesidades.', 4),
('Igualdad de género', 'La igualdad de género implica que mujeres y hombres, y niñas y niños, disfruten de los mismos derechos, recursos, oportunidades y protecciones.', 4),
('Violencia de género', 'Violencia de género es aquella que se ejerce contra una persona por razón de su sexo.', 4),
('Brecha de género', 'La diferencia entre mujeres y hombres respecto a su participación en ámbitos como la educación, el trabajo y la política.', 4),
('Diversidad', 'La diversidad se refiere a la presencia de diferencias y variedades en la sociedad, incluyendo género, raza, etnia, orientación sexual, y más.', 4),
('Inclusión', 'La inclusión es el acto de crear entornos donde todas las personas son respetadas, valoradas y tienen las mismas oportunidades de participar y prosperar.', 4),
('Acoso Sexual', 'El acoso sexual es cualquier conducta de naturaleza sexual no deseada que afecta la dignidad de una persona.', 4),
('Micromachismo', 'Micromachismo son las actitudes y comportamientos sexistas sutiles que perpetúan la desigualdad de género.', 4);


INSERT INTO Niveles (Nivel) VALUES 
('Global'),
('Nacional'),
('Local'),
('Regional'),
('Comunitario');

INSERT INTO Areas (Area) VALUES 
('Educación'),
('Salud'),
('Trabajo'),
('Política'),
('Seguridad');


--estadisticas 
INSERT INTO Estadisticas (FKArea, FKNivel, Lugar, Fecha, Datos, Descripcion, FKPermiso) VALUES 
(1, 1, 'Mundial', '2022-12-31', 0.75, 'Porcentaje de mujeres con acceso a educación superior.', 1),
(2, 2, 'México', '2023-01-01', 0.80, 'Tasa de mujeres con acceso a servicios de salud básicos.', 2),
(2, 1, 'Mundial', '2023-01-15', 0.80, 'Proporción de mujeres con acceso a servicios de salud reproductiva.', 2),
(3, 1, 'Mundial', '2023-01-15', 0.60, 'Proporción de mujeres en posiciones de liderazgo en el ámbito laboral.', 3),
(3, 1, 'Mundial', '2022-12-31', 62.5, 'Porcentaje de mujeres en la fuerza laboral.', 3),
(3, 2, 'México', '2022-12-31', 47.0, 'Porcentaje de mujeres en la fuerza laboral.', 3),
(3, 3, 'Veracruz', '2022-12-31', 45.8, 'Porcentaje de mujeres en la fuerza laboral.', 3),
(1, 1, 'Mundial', '2023-01-15', 0.75, 'Proporción de mujeres con acceso a educación secundaria.', 1);

--campañas
INSERT INTO Campañas (Nombre, Areafk, Nivelfk, descripcion) VALUES
('Conoce tu Protocolo',1,5,'Tiene el objetivo de dar a conocer a toda la comunidad universitaria el contenido y la aplicación del Protocolo para atender la violencia de género en la Universidad Veracruzana, recopilando en la aplicación de la campaña la información que permita mejorar y perfeccionar el documento.'),
('Campaña por la Educación Igualitaria', 1, 1,'Promover la igualdad de acceso a la educación'),
('Salud para Todas', 2, 2, 'Garantizar el acceso equitativo a servicios de salud para mujeres.'),
('Comunidad UV contra la violencia de género',1,5,'El objetivo es difundir las vías para atender la violencia de género, el acoso y hostigamiento sexual a toda la comunidad universitaria.'),
('Conoce tu Protocolo',1,5,'Tiene el objetivo de dar a conocer a toda la comunidad universitaria el contenido y la aplicación del Protocolo para atender la violencia de género en la Universidad Veracruzana.'),
('Seguridad para Mujeres', 5, 5, 'Aumentar las medidas de seguridad y protección para mujeres en espacios públicos y privados.'),
('Igualdad en el Trabajo', 3, 3, 'Fomentar la igualdad de oportunidades laborales y de salario para mujeres y hombres.');


