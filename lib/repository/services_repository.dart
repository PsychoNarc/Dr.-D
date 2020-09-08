import 'package:appt_app/models/services_model.dart';

class ServicesRepository {
  static const _allServices = <Service>[
    Service(
      id: 1,
      description: 'Professional Counselling',
      price: '200',
      serviceMinutes: 60,
    ),
    Service(
      id: 2,
      description: 'Psychiatric Counselling\nand Help',
      price: '420',
      serviceMinutes: 120,
    ),
    Service(
      id: 3,
      description: 'Regular checkup',
      price: '100',
      serviceMinutes: 300,
    ),
    Service(
      id: 4,
      description:'Physiotheraphy and\nRehabilitation Service',
      price: '300',
      serviceMinutes: 30,
    ),
    Service(
      id: 5,
      description: 'Radiology Services',
      price: '500',
      serviceMinutes: 30,
    ),
    Service(
      id: 6,
      description: 'Medication and Drug Services',
      price: '100',
      serviceMinutes: 45,
    ),
  ];

  static List<Service> loadServices() {
    return _allServices;
  }
}
