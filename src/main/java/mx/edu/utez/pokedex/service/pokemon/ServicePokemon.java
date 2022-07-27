package mx.edu.utez.pokedex.service.pokemon;

import java.util.List;

import mx.edu.utez.pokedex.model.pokemon.BeanPokemon;
import mx.edu.utez.pokedex.model.pokemon.DaoPokemon;
import mx.edu.utez.pokedex.utils.ResultAction;

public class ServicePokemon {
    DaoPokemon daoPokemon = new DaoPokemon();

    public List<BeanPokemon> getAll(){
        return daoPokemon.findAll();
    }

    public ResultAction save(BeanPokemon pokemon){
        ResultAction result = new ResultAction();
        if (daoPokemon.save(pokemon)){
            result.setResult(true);
            result.setMessage("Pokemon registrado correctamente");
            result.setStatus(200);
        }else{
            result.setResult(false);
            result.setMessage("Ocurrio un error al registrar");
            result.setStatus(400);
        }
        return result;
    }
    public BeanPokemon getPokemon(Long id){
        return daoPokemon.findOne(id);
    }
    public ResultAction update(BeanPokemon pokemon){
        ResultAction result = new ResultAction();
        if (daoPokemon.update(pokemon)){
            result.setStatus(200);
            result.setResult(false);
            result.setMessage("Pokemon actualizado correctamente");
        }else{
            result.setStatus(400);
            result.setResult(true);
            result.setMessage("Ocurrio un error");
        }
        return result;
    }
}
