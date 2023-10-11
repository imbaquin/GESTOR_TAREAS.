package util;

import model.User;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FileUtil {

    public static void writeToFile(String data, String filepath) throws IOException {
        File directory = new File(filepath).getParentFile();
        if (!directory.exists()) {
            directory.mkdirs();
        }
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filepath, true))) {
            writer.write(data + System.lineSeparator());
        }
    }

    public static List<User> readFromFile(String filepath) throws IOException {
        List<User> users = new ArrayList<>();
        File file = new File(filepath);
        if (!file.exists()) {
            return users;
        }
        try (BufferedReader reader = new BufferedReader(new FileReader(filepath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                users.add(new User(data[0], data[1], data[2]));
            }
        }
        return users;
    }
}
