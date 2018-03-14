package demo.servlet;

import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            new Driver();
            Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");
            String queryEmail = "SELECT * FROM db.user WHERE email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(queryEmail);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                req.setAttribute("message", "Email is already existed.");
                req.getRequestDispatcher("sign-up.jsp").forward(req, resp);
                return;
            }

            String sql = "INSERT INTO db.user VALUE(NULL, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, password);
            preparedStatement.executeUpdate(); // DML INSERT UPDATE DELETE

            preparedStatement.close();
            connection.close();

            resp.sendRedirect("index.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}