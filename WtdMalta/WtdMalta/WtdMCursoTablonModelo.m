//
//  WtdMCursoTablonModelo.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMCursoTablonModelo.h"

// Definimos 3 tipos de Anuncios: Eventos, Turismo y Restauración
// No lo ponemos en .h lo ocultamo en .m dentro del @interface

@interface WtdMCursoTablonModelo ()

@property (strong, nonatomic) NSArray *idiomas;
@property (strong, nonatomic) NSArray *buceo;
@property (strong, nonatomic) NSArray *cocina;

@end

@implementation WtdMCursoTablonModelo

#pragma mark - Propiedades

-(int) idiomasCount {
    return [self.idiomas count];
}
-(int) buceoCount {
    return [self.buceo count];
}
-(int) cocinaCount {
    return [self.cocina count];
}

-(id) init {
    
    if (self = [super init]) {
        
        // Creamos los modelos (cursos)
        WtdMCursoModelo *idiomas01 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Chamber College"
                                                           Ciudad:@"Gzira"
                                                        Direccion:@"Edgar Bernard Street, Gzira, Malta"
                                                            Notas:@"The Chamber College for Educational Services (Malta) is a modern institution offering high quality English Language courses for adults as well as juniors."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-01.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/29?lang=en"]];
        
        WtdMCursoModelo *idiomas02 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Link School of English"
                                                           Ciudad:@"Swieqi"
                                                        Direccion:@"88/90 Triq it-Tiben, Swieqi, Malta"
                                                            Notas:@"Established in 1992, Link School of English is a private School located in Swieqi, a quiet residential area ideal for educational purposes and close to St. Julian’s. We pride ourselves in giving individual attention to each and every student"
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-02.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/208?lang=en"]];
        
        WtdMCursoModelo *idiomas03 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Maltalingua"
                                                           Ciudad:@"Saint Julians"
                                                        Direccion:@"Boxer House, Birkirkara Hill, Saint Julians, Malta"
                                                            Notas:@"Their goal is to be one of the best English language schools in Malta and for their international students to have an excellent learning experience within a welcoming environment."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-03.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/47?lang=en"]];
        
        WtdMCursoModelo *idiomas04 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"IELS"
                                                           Ciudad:@"Sliema"
                                                        Direccion:@"Mattew Pulis Street, Sliema, Malta"
                                                            Notas:@"With over 25 years of English teaching experience, IELS Malta is the top English language school in Malta and Gozo. We know exactly what each and every student needs to effectively learn and develop fluent communication skills in English."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-04.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/23?lang=en"]];
        
        WtdMCursoModelo *idiomas05 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Inlingua"
                                                           Ciudad:@"Sliema"
                                                        Direccion:@"Bisazza Street Sliema, Malta"
                                                            Notas:@"Inlingua Malta forms part of the internationally renowned franchise and has been operating since 1980. The school is situated in Sliema, a busy commercial centre, close to the beach, shops, cafes and restaurants and is easily accessible by public transport. The school comprises 44 fully airconditioned classrooms, a library, a video room, WiFi and 2 lifts."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-05.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/37?lang=en"]];
        
        WtdMCursoModelo *idiomas06 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Linguatime School of English"
                                                           Ciudad:@"Sliema"
                                                        Direccion:@"Tower Road, Sliema, Malta"
                                                            Notas:@"International professional English language school based in Sliema, Malta. Students are welcome to learn English in a friendly and personal atmosphere. We have an excellent reputation for providing good quality English language courses for individuals, schools, businesses and groups. We are committed to offering our students a personalised service and we guarantee first-rate English language programmes"
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-06.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/39?lang=en"]];
        
        WtdMCursoModelo *idiomas07 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"B.E.L.S"
                                                           Ciudad:@"Gozo"
                                                        Direccion:@"Triq Ta Doti, Kercem, Gozo, Malta"
                                                            Notas:@"B.E.L.S. is a small family-run English language school that is the first of its kind and has been established since 1997. It is a centre for adults with a maximum capacity of 60 students. It specialises in providing quality tuition in a relaxed, personalised, calm, and friendly environment."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-07.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/22?lang=en"]];
        
        WtdMCursoModelo *idiomas08 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"EEC Language Centre"
                                                           Ciudad:@"Sliema"
                                                        Direccion:@"Triq Tas-Sliema, San Gwann, Malta"
                                                            Notas:@"EEC Language Centre is situated in a residential and affluent area called Kappara San Gwann in the limits of Sliema, Paceville, St. Julian's area. The building itself is spacious, having bright rooms, highly finished in marble and mahogany fittings and fixtures. The school can accommodate 250 students per week in the main building. The Language Centre is just 20 minutes walking distance from the Strand - Sliema, with accommodation, shopping, banking, recreational and other facilities close at hand."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-08.jpg"]
                                                              Url:[NSURL URLWithString:@" http://whattodomalta.com/places/28?lang=en"]];
        
        WtdMCursoModelo *idiomas09 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"Alpha School of English"
                                                           Ciudad:@"Saint Paul's Bay"
                                                        Direccion:@"Arznell Street, St. Paul Bay, Malta"
                                                            Notas:@"Alpha School of English is a licensed EFL school recognised by Malta's Ministries of Education and Tourism. Established in 1991, our English school has welcomed junior and adult students from all over the world to learn English in Malta for over twenty years."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-09.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/30?lang=en"]];
        
        WtdMCursoModelo *idiomas10 = [WtdMCursoModelo cursoWithTipo: @"Idiomas"
                                                           Titulo: [UIImage imageNamed:@"TituloIdiomas.png"]
                                                          Empresa: @"International House"
                                                           Ciudad:@"Swieqi"
                                                        Direccion:@"128, Sirk Str, Swieqi, Malta"
                                                            Notas:@"If you want to learn English in Malta, INTERNATIONAL HOUSE Malta-Gozo offers a wide range of courses that cover students’ needs. We run three separate operations with a centre for ADULT students (18+) in St. Julian’s and an all-inclusive YOUNG LEARNERS programme at Paradise Bay, Malta. In GOZO we offer the possibility to live and learn with your teacher."
                                                             Logo:[UIImage imageNamed:@"WtdM-C-I-Logo-10.jpg"]
                                                              Url:[NSURL URLWithString:@"http://whattodomalta.com/places/209?lang=en "]];
        
        WtdMCursoModelo *buceo01 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"SELKIES"
                                                         Ciudad:@"Sliema"
                                                      Direccion:@"Planet Court, Tigne Seafront, Sliema, Malta"
                                                          Notas:@"We are a PADI 5* Instructor Development Centre located in the heart of Sliema, overlooking the historical city of Valletta, and on the Comino Island, near to the famous Blue Lagoon. Selkies offers the full range of PADI & DSAT courses from Bubblemaker to Instructor and every type of diving from recreational to technical and cave diving."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-01.png"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/89?lang=en"]];
        
        WtdMCursoModelo *buceo02 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"DiveMalta"
                                                         Ciudad:@"Saint Julians"
                                                      Direccion:@"Triq George Borg Olivier, Saint Julians, Malta"
                                                          Notas:@"DIVE MALTA is positioned on the picturesque seafront of St Julian's bay and is the Maltese Islands' newest and most dynamic diving centre and snorkelling centre . Located in the heart of St Julian's, it is our intention to become Malta's number one diving and water sports service provider. Our prime position means that we are within easy reach of all the hotels and apartments on the Paceville, St Julian's and Sliema seafront. Being located literally on the waters edge allows us to offer services that other centres can only dream of."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-02.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/21?lang=en"]];
        
        WtdMCursoModelo *buceo03 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Oxygene Dive Centre"
                                                         Ciudad:@"Sliema"
                                                      Direccion:@"Planet Court, Tigne Seafront, Sliema, Malta"
                                                          Notas:@"Oxygene Malta offers the full range of PADI & DSAT courses from Bubblemaker to Instructor and every type of diving from recreational to technical and cave diving. Oxygene Malta is a dive centre focusing on quality and safety. We are one of the few dive centres in Malta prioritising boat diving - more convenient access to better sites with less divers. Our boat dives are available 7 days a week from April to November and on demand during other times of the year. Our dive boats visit all of Malta's & Gozo's sites including caves, reefs, wrecks and scenic dives."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-03.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/24?lang=en"]];
        
        WtdMCursoModelo *buceo04 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Aquatica Diving"
                                                         Ciudad:@"Saint Paul's Bay"
                                                      Direccion:@"Toni Bajada Street St. Paul's Bay Malta"
                                                          Notas:@"Their service provides all divers with enjoyable, flexible and highly customised packages. With a fresh and friendly attitude we aim to ensure everyone enjoys a great day."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-04.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/78?lang=en"]];
        
        WtdMCursoModelo *buceo05 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Calypso Diving Centre"
                                                         Ciudad:@"Marsalforn"
                                                      Direccion:@"The Seafront Marsalforn, XRA 105 Gozo, Malta"
                                                          Notas:@"The Calypso Diving Centre, a fully licensed and government approved centre, has been catering for the diving trade since 1985. From the very beginning of the operation, the safety and the enjoyment of the clients have always been our top priority. Over the years, our reputation for our safety standards, organisation and punctuality are the envy of everyone. Our dive centre is the ONLY recognised BSAC SCHOOL in Gozo and also a PADI approved DIVE CENTRE."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-05.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/85?lang=en"]];
        
        WtdMCursoModelo *buceo06 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Buddies Dive Cove"
                                                         Ciudad:@"Bugibba"
                                                      Direccion:@"Pioneer Road, Bugibba, Malta"
                                                          Notas:@"Buddies is a family run dive school & shop centrally located in Bugibba, near Bugibba Square and only 5 minutes walk from Qawra & St Pauls Bay on the northern coast of Malta, with the islands of Gozo and Comino just minutes away by boat. Together with our team of highly qualified PADI Instructors we pride ourselves in giving you our full personal attention to ensure that your scuba diving Malta experience is a total success."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-06.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/84?lang=en"]];
        
        WtdMCursoModelo *buceo07 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Aquaventure Ltd"
                                                         Ciudad:@"Mellieha"
                                                      Direccion:@"The Waters Edge, Mellieha, Malta"
                                                          Notas:@"AquaVenture Limited, PADI Gold Palm Resort, was formed in 1992 and has grown to become one of Malta's leading dive centres, with total commitment to customer care and satisfaction"
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-07.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/80?lang=en"]];
        
        WtdMCursoModelo *buceo08 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Atlantis Diving Centre"
                                                         Ciudad:@"Marsalforn"
                                                      Direccion:@"Qolla Street Marsalforn Bay, Gozo, Malta"
                                                          Notas:@"All our instructors are highly qualified and experienced. Accompanied and unaccompanied diving. Explore caverns, walls, wrecks and reefs, including the world famous Blue Hole."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-08.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/81?lang=en "]];
        
        WtdMCursoModelo *buceo09 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Blue Waters Dive Cove"
                                                         Ciudad:@"Qala"
                                                      Direccion:@"Kuncizzjoni Street, Qala, Gozo, Malta"
                                                          Notas:@"Diving Gozo with us is great fun and you will experience the wonderful dive sites that surround our islands of Gozo, Malta and Comino."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-09.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/82?lang=en"]];
        
        WtdMCursoModelo *buceo10 = [WtdMCursoModelo cursoWithTipo: @"Buceo"
                                                         Titulo: [UIImage imageNamed:@"TituloBuceo.png"]
                                                        Empresa: @"Bubbles Dive Centre - Gozo"
                                                         Ciudad:@"Marsalforn"
                                                      Direccion:@"Forn, Masalforn, Zebbug, Malta"
                                                          Notas:@"Gozo has one of the most incredible underwater environments and we want to share this with you whilst making sure that this magical place is preserved in the way nature intended so we can continue to enjoy it for generations to come. That’s why we’ve created Bubbles Dive Centre so we can show you why diving in this area is so fantastic."
                                                           Logo:[UIImage imageNamed:@"WtdM-C-B-Logo-10.jpg"]
                                                            Url:[NSURL URLWithString:@"http://whattodomalta.com/places/83?lang=en "]];
        
        WtdMCursoModelo *cocina01 = [WtdMCursoModelo cursoWithTipo: @"Cocina"
                                                          Titulo: [UIImage imageNamed:@"TituloCocina.png"]
                                                         Empresa: @"Taste Cooking School"
                                                          Ciudad:@"Rabat"
                                                       Direccion:@"Republic Street, Rabat, Malta"
                                                           Notas:@"This is a dedicated space where you can learn how to cook anything, from the simplest basics to the most complicated dishes."
                                                            Logo:[UIImage imageNamed:@"WtdM-C-C-Logo-01.jpg"]
                                                             Url:[NSURL URLWithString:@"http://whattodomalta.com/places/91?lang=en"]];
        
        WtdMCursoModelo *cocina02 = [WtdMCursoModelo cursoWithTipo: @"Cocina"
                                                          Titulo: [UIImage imageNamed:@"TituloCocina.png"]
                                                         Empresa: @"Plates & Tastes"
                                                          Ciudad:@"Bugibba"
                                                       Direccion:@"Saint Julians, Malta"
                                                           Notas:@"Cook the most traditional Spanish recipes with me!!"
                                                            Logo:[UIImage imageNamed:@"WtdM-C-C-Logo-02.jpg"]
                                                             Url:[NSURL URLWithString:@" http://whattodomalta.com/places/92?lang=en"]];
        
        self.idiomas = @[idiomas01, idiomas02, idiomas03, idiomas04, idiomas05, idiomas06, idiomas07, idiomas08, idiomas09, idiomas10];
        self.buceo = @[buceo01, buceo02, buceo03, buceo04, buceo05, buceo06, buceo07, buceo08, buceo09, buceo10];
        self.cocina = @[cocina01, cocina02];
        
    }
    
    return self;
    
}

-(WtdMCursoModelo *) idiomasAtIndex:(int)index {
    return [self.idiomas objectAtIndex:index];
}

-(WtdMCursoModelo *) buceoAtIndex:(int)index {
    return [self.buceo objectAtIndex:index];
}

-(WtdMCursoModelo *) cocinaAtIndex:(int)index {
    return [self.cocina objectAtIndex:index];
}


@end
