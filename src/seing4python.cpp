#include "inputs.h"
#include "inputs.cpp"
#include "atom.h"
#include "atom.cpp"
#include "periodictable.h"
#include "periodictable.cpp"
#include "atomicsystem.h"
#include "atomicsystem.cpp"
#include "fingerprintgenerator.h"
#include "fingerprintgenerator.cpp"
#include "neighborlist.h"
#include "neighborlist.cpp"
#include "gaussiancalculator.h"
#include "gaussiancalculator.cpp"
#include "bispectrumcalculator.h"
#include "bispectrumcalculator.cpp"
#include "zernikecalculator.h"
#include "zernikecalculator.cpp"
#include "genericlocalcalculator.h"
#include "genericlocalcalculator.cpp"
#include "utilities.h"
#include "utilities.cpp"
#include "agnicalculator.h"
#include "agnicalculator.cpp"
#include <pybind11/pybind11.h>


namespace py = pybind11;

PYBIND11_MODULE(seing4python, m){
    m.doc() = "Read in the option files and create read_prop_file";
    m.def("read_prop_file", &read_prop_file);

    py::class_<fingerprintProperties>(m, "fingerprintProperties")
	    .def_readwrite("box_size", &fingerprintProperties::box_size)
	    .def_readwrite("output_file", &fingerprintProperties::output_file)
	    .def_readwrite("output_mode", &fingerprintProperties::output_mode);
    
    py::class_<Atom, std::shared_ptr<Atom>>(m, "Atom")
	    .def(py::init<const std::string &, double, double, double>())
	    .def(py::init<>())
	    .def("get_atom_type", &Atom::get_atom_type)
	    .def("get_x", &Atom::get_x)
	    .def("get_y", &Atom::get_y)
	    .def("get_z", &Atom::get_z);
   
    py::class_<Element>(m, "Element");

    py::class_<PeriodicTable>(m, "PeriodicTable")
	    .def(py::init<>())
	    .def("get_atomic_number", &PeriodicTable::get_atomic_number)
	    .def("get_electronegativity", &PeriodicTable::get_electronegativity)
	    .def("get_element_list", &PeriodicTable::get_element_list);

    py::class_<AtomicSystem, std::shared_ptr<AtomicSystem>>(m, "AtomicSystem")
	    .def(py::init<const std::string &, bool, bool, bool, double>())
	    .def(py::init<>())
	    // .def("atoms", &AtomicSystem::atoms)
	    .def("build_from_file", &AtomicSystem::build_from_file)
            .def("set_box_size", &AtomicSystem::set_box_size)
	    .def("get_distance_component", py::overload_cast<int, int, int>(&AtomicSystem::get_distance_component))
	    .def("get_distance_component", py::overload_cast<Atom, Atom, int>(&AtomicSystem::get_distance_component))
            .def("get_square_distance", py::overload_cast<Atom, Atom>(&AtomicSystem::get_square_distance))
            .def("get_square_distance", py::overload_cast<int, int>(&AtomicSystem::get_square_distance))
            .def("check_square_distance", &AtomicSystem::check_square_distance)
            .def("get_atom_types", &AtomicSystem::get_atom_types)
	    .def("get_atom", &AtomicSystem::get_atom)
	    .def("get_n_atoms", &AtomicSystem::get_n_atoms)
	    .def("get_xsize", &AtomicSystem::get_xsize)
	    .def("get_ysize", &AtomicSystem::get_ysize)
            .def("get_zsize", &AtomicSystem::get_zsize)
	    .def("get_xmin", &AtomicSystem::get_xmin)
	    .def("get_ymin", &AtomicSystem::get_ymin)
	    .def("get_zmin", &AtomicSystem::get_zmin)
	    .def("get_xmax", &AtomicSystem::get_xmax)
	    .def("get_ymax", &AtomicSystem::get_ymax)
            .def("get_zmax", &AtomicSystem::get_zmax)
	    .def("get_xpbc", &AtomicSystem::get_xpbc)
	    .def("get_ypbc", &AtomicSystem::get_ypbc)
            .def("get_zpbc", &AtomicSystem::get_zpbc);
    
    py::class_<FingerprintGenerator>(m, "FingerprintGenerator")
	    .def(py::init<AtomicSystem&, fingerprintProperties>())
	    .def("write2file", &FingerprintGenerator::write2file)
            .def_readwrite("sample1", &FingerprintGenerator::sample1)
	    .def_readwrite("sample2", &FingerprintGenerator::sample2)
	    .def_readwrite("natoms", &FingerprintGenerator::natoms)
	    .def_readwrite("fsize", &FingerprintGenerator::fsize);
}


