import com.sun.net.httpserver.HttpServer;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class HelloWorld {

    public static void main(String[] args) throws Exception {

        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);

        server.createContext("/", exchange -> {

            String response = """
                <!DOCTYPE html>
                <html>
                <head>
                    <title>Hello World</title>
                </head>
                <body style="font-family: Arial; text-align: center; margin-top: 100px;">
                    <h1>Hello World 🌍</h1>
                    <p>Java web application is running successfully.</p>
                </body>
                </html>
                """;

            exchange.getResponseHeaders().add("Content-Type", "text/html; charset=UTF-8");
            exchange.sendResponseHeaders(200, response.getBytes().length);

            OutputStream outputStream = exchange.getResponseBody();
            outputStream.write(response.getBytes());
            outputStream.close();
        });

        server.setExecutor(null);
        server.start();

        System.out.println("✅ Server started successfully at http://localhost:8080");
    }
}
