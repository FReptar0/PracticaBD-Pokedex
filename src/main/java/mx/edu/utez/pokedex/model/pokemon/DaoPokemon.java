package mx.edu.utez.pokedex.model.pokemon;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import mx.edu.utez.pokedex.utils.MySqlConnection;

public class DaoPokemon {
    Connection con;
    PreparedStatement pstm;
    CallableStatement cstm;
    ResultSet rs;

    public List<BeanPokemon> findAll(){
        List<BeanPokemon> pokemons = new LinkedList<>();
        BeanPokemon pokemon = null;
        try {
            con = new MySqlConnection().getConnection();
            String query = "SELECT * FROM pokemon;";
            pstm = con.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()){
                pokemon = new BeanPokemon();
                pokemon.setId(rs.getLong("id"));
                pokemon.setName(rs.getString("name_pokemon"));
                pokemon.setHealth(rs.getDouble("health"));
                pokemon.setPower(rs.getDouble("power"));
                pokemon.setWeight(rs.getDouble("weight"));
                pokemon.setHeight(rs.getDouble("height"));
                pokemon.setPokemonType(rs.getString("pokemon_type"));
                pokemons.add(pokemon);
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoPokemon.class.getName()).log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnection();
        }
        return pokemons;
    }

    public boolean save(BeanPokemon pokemon){
        try{
            con = new MySqlConnection().getConnection();
            String query = "insert into pokemon " +
                "(name_pokemon, health, power, weight, height, pokemon_type) "+
                "values (?,?,?,?,?,?)";
            pstm = con.prepareStatement(query);
            pstm.setString(1, pokemon.getName());
            pstm.setDouble(2, pokemon.getHealth());
            pstm.setDouble(3, pokemon.getPower());
            pstm.setDouble(4, pokemon.getWeight());
            pstm.setDouble(5, pokemon.getHeight());
            pstm.setString(6, pokemon.getPokemonType());

            return pstm.executeUpdate() ==1;
        } catch (SQLException e){
            Logger.getLogger(DaoPokemon.class.getName()).log(Level.SEVERE, "Error save", e);
            return false;
        }finally {
            closeConnection();
        }
    }

    public BeanPokemon findOne(Long id) {
        try{
            con = new MySqlConnection().getConnection();
            String query = "SELECT * FROM pokemon WHERE id =?";
            pstm = con.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()){
                BeanPokemon pokemon = new BeanPokemon();
                pokemon.setId(rs.getLong("id"));
                pokemon.setName(rs.getString("name_pokemon"));
                pokemon.setPokemonType(rs.getString("pokemon_type"));
                pokemon.setHealth(rs.getDouble("health"));
                pokemon.setHeight(rs.getDouble("height"));
                pokemon.setPower(rs.getDouble("power"));
                pokemon.setWeight(rs.getDouble("weight"));
                return pokemon;
            }
        } catch (SQLException e){
            Logger.getLogger(DaoPokemon.class.getName())
                    .log(Level.SEVERE, "Error findOne", e);
        }finally {
            closeConnection();
        }
        return null;
    }

    public boolean update(BeanPokemon pokemon){
        try{
            con = new MySqlConnection().getConnection();
            String query = "update pokemon set name_pokemon = ?, pokemon_type =?, health = ?," +
                    "power = ?, weight = ?, height = ? where id = ?";
            pstm = con.prepareStatement(query);
            pstm.setString(1, pokemon.getName());
            pstm.setDouble(3, pokemon.getHealth());
            pstm.setDouble(4, pokemon.getPower());
            pstm.setDouble(5, pokemon.getWeight());
            pstm.setDouble(6, pokemon.getHeight());
            pstm.setString(2, pokemon.getPokemonType());
            pstm.setLong(7, pokemon.getId());
            return pstm.executeUpdate() == 1;
        } catch (SQLException e ){
            Logger.getLogger(DaoPokemon.class.getName()).log(Level.SEVERE, "Error Update", e);
            return false;
        }finally {
            closeConnection();
        }
    }

    public void closeConnection(){
        try{
            if (con != null){
                con.close();
            }
            if (pstm != null){
                pstm.close();
            }
            if (cstm != null){
                cstm.close();
            }
            if (rs != null){
                rs.close();
            }
        }catch (SQLException e){
        }
    }

}
