package application.model;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GenerationType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.OneToMany;


@Entity
@Table(name = "categorias")


public class Categoria {
    @Id
    @GeneratedValue(Strategy = GenerationType.IDENTITY)
    private long id;
    
}
