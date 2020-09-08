import 'package:appt_app/models/staff_model.dart';

class StaffRepository {
  static const _allStaff = <Staff>[
    Staff(
      id: 1,
      name: 'Dr. R.D. Laing',
      bio:
          'Dr. Laing is a top-notch psychiatrist in our clinic who wrote extensively on mental illness – in particular, the experience of psychosis and schizophrenia. Taking the expressed feelings of the individual patient or client as valid descriptions of lived experience rather than simply as symptoms of mental illness, Laing regards schizophrenia or other delusional-psychosis as a theory not a fact. He is the best psychiatrist in our clinic, whose main goal is the betterment of the patients despite everything. He co-founded a well-known charity, concerned with the understanding and relief of mental suffering, in which he also chaired and influenced the wider movement of therapeutic communities, operating in less “confrontational” psychiatric settings.',
      imageAsset: 'assets/images/doctor-1.jpg',
      availableTimes: [
        '2020-01-01 09:00:00',
        '2020-01-01 10:00:00',
        '2020-01-01 14:00:00',
        '2020-01-01 16:00:00'
      ],
    ),
    Staff(
      id: 2,
      name: 'Dr. Aditi',
      bio:
          'Dr. Aditi is one of the top radiologists in our clinic who specializes in X-Ray techniques. Equipped with a master\'s degree in radiology, she has a very good interpersonal communication, mathematics, and science skills, as well as an acute proficiency with medical and patient database softwares. Even she, along with Dr. Laing, considers the betterment of the patients as utmost priority.',
      imageAsset: 'assets/images/doctor-2.jpg',
      availableTimes: [
        '2020-01-01 08:00:00',
        '2020-01-01 11:00:00',
        '2020-01-01 13:00:00',
        '2020-01-01 18:00:00'
      ],
    ),
    Staff(
      id: 3,
      name: 'Dr. Amrita Chauhan',
      bio:
          'Equipped with a master\'s degree in Medicine, Dr. Amrita is the best physician in our clinic, who can work in fast-pace, high-stress environments in fluidity. She has the best empathy, critical thinking, leadership, and communication skills, as well as an acute knowledge of medical software and a variety of medical and diagnostic equipments. She also makes the betterment of the patients as her topmost priority above all else.',
      imageAsset: 'assets/images/doctor-3.jpg',
      availableTimes: [
        '2020-01-01 16:00:00',
        '2020-01-01 17:00:00',
        '2020-01-01 19:00:00',
        '2020-01-01 20:00:00'
      ],
    )
  ];

  static List<Staff> loadStaff() {
    return _allStaff;
  }
}
