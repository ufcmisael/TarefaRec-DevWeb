package models;

import java.sql.*;

import static config.Config.*;

public class ClienteDAO {
    public boolean inserirCliente(String nome, String email, int idade){
        boolean sucesso = false;
        try {
            Class.forName(config.Config.BD_DRIVER);
            Connection connection = DriverManager.getConnection(BD_URL,BD_USUARIO,BD_SENHA);
            PreparedStatement pstm = connection.prepareStatement("INSERT INTO cliente (nome,email,idade) VALUES (?,?,?)");
            pstm.setString(1,nome);
            pstm.setString(2,email);
            pstm.setInt(3,idade);

            sucesso = (pstm.executeUpdate() == 1);
            pstm.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Erro ao inserir usuário: " + ex.getMessage());
            ex.printStackTrace();
            return false;
        }
        return sucesso;
    }

    public Cliente obterCliente(String email) {
        Cliente cliente = null;
        try {
            Class.forName(config.Config.BD_DRIVER);
            Connection connection = DriverManager.getConnection(BD_URL,BD_USUARIO,BD_SENHA);
            PreparedStatement pstm = connection.prepareStatement("SELECT id,nome,email,idade FROM cliente WHERE email=?");
            pstm.setString(1,email);

            ResultSet resultSet = pstm.executeQuery();
            while (resultSet.next()) {

                cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setEmail(resultSet.getString("email"));
                cliente.setIdade(resultSet.getInt("idade"));
            }
            resultSet.close();
            pstm.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Erro ao obter usuário: " + ex.getMessage());
            ex.printStackTrace();
            return null;
        }
        return cliente;
    }
}
