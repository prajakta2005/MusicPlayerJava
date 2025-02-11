import javax.swing.*;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class MusicPlayer extends JFrame {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Plyr";
    private static final String USERNAME = "Prajakta";
    private static final String PASSWORD = "praju";

    private Connection conn;
    private DefaultListModel<String> songListModel;
    private JList<String> songList;
    private JTextArea outputTextArea;

    public MusicPlayer() {
        super("Music Player");

        try {
            conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            System.out.println("Connected to database successfully.");
        } catch (SQLException e) {
            System.out.println("Connection to database failed. Error: " + e.getMessage());
            JOptionPane.showMessageDialog(null, "Connection to database failed. Please check database settings.");
            System.exit(1);
        }

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(800, 400);
	        setLocationRelativeTo(null); // Center the window
	        setLayout(new BorderLayout());

        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.setBackground(new Color(175,175,255)); // Light pink background

        // Create panel to display list of songs
        JPanel songPanel = new JPanel(new BorderLayout());
        songPanel.setBackground(new Color(175,175,255)); // Light bluish background
        songListModel = new DefaultListModel<>();
        songList = new JList<>(songListModel);
        songList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        songList.addListSelectionListener(new ListSelectionListener() {
            @Override
            public void valueChanged(ListSelectionEvent e) {
                // Handle selection change if needed
            }
        });
        JScrollPane songScrollPane = new JScrollPane(songList);
        songPanel.add(new JLabel("Available Songs:"), BorderLayout.NORTH);
        songPanel.add(songScrollPane, BorderLayout.CENTER);

        // Create panel for output messages
        outputTextArea = new JTextArea(10, 40);
        outputTextArea.setEditable(false);
        JScrollPane outputScrollPane = new JScrollPane(outputTextArea);

        mainPanel.add(songPanel, BorderLayout.WEST);
        mainPanel.add(outputScrollPane, BorderLayout.CENTER);

        JPanel buttonPanel = new JPanel(new GridLayout(2, 3, 10, 10));
        buttonPanel.setBackground(new Color(255, 255, 240)); // Light yellow background
        String[] buttonLabels = {"Play a Song", "Create Playlist", "Search Songs", "Add Song to Playlist", "Exit"};
        for (String label : buttonLabels) {
            JButton button = new JButton(label);
            button.addActionListener(new ButtonClickListener());
            buttonPanel.add(button);
            // Customize button colors
            button.setBackground(new Color(0,255,255)); // Orange Red color
            button.setForeground(Color.BLACK);
            button.setFocusPainted(false); // Remove focus border
            button.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10)); // Add padding
        }
        mainPanel.add(buttonPanel, BorderLayout.SOUTH);

        mainPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20)); 

        add(mainPanel);

        // Load available songs from database
        loadAvailableSongs();

        setVisible(true);
    }

    private void loadAvailableSongs() {
        try {
            String query = "SELECT song_name FROM songs";
            PreparedStatement statement = conn.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String songName = resultSet.getString("song_name");
                songListModel.addElement(songName);
            }

            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            outputTextArea.append("Failed to load available songs.\n");
        }
    }

    private class ButtonClickListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            String command = e.getActionCommand();
            switch (command) {
                case "Play a Song":
                    playSong();
                    break;
                case "Create Playlist":
                    createPlaylist();
                    break;
                case "Search Songs":
                    searchSongs();
                    break;
                case "Add Song to Playlist":
                    addSongToPlaylist();
                    break;
                case "Exit":
                    try {
                        conn.close(); // Close the database connection
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                    System.exit(0);
                    break;
            }
        }
    }

    private void playSong() {
        String selectedSong = songList.getSelectedValue();
        if (selectedSong != null) {
            try {
                String query = "SELECT * FROM songs WHERE song_name = ?";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, selectedSong);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    outputTextArea.setText("Playing song: " + resultSet.getString("song_name") + "\n");
                    // Additional logic to play the song
                } /*else {
                    outputTextArea.setText("Song not found.\n");
                }*/

                statement.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
                outputTextArea.setText("Error playing song. Please try again.\n");
            }
        } else {
            outputTextArea.setText("Please select a song to play.\n");
        }
    }

    private void createPlaylist() {
        String playlistName = JOptionPane.showInputDialog(null, "Enter playlist name:");
        if (playlistName != null) {
            try {
                String query = "INSERT INTO playlists (playlist_name, genre) VALUES (?, ?)";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, playlistName);
                statement.setString(2, "Bollywood"); // Default genre for now
                int rowsInserted = statement.executeUpdate();
                String q = String.format("CREATE TABLE %s (SONG_NAME varchar(255))", playlistName);
                
                if (rowsInserted > 0) {
                    outputTextArea.setText("Playlist created successfully: " + playlistName + "\n");
                } else {
                    outputTextArea.setText("Failed to create playlist.\n");
                }

                statement.close();
                PreparedStatement s1 = conn.prepareStatement(q);
                s1.executeUpdate(q);
            } catch (SQLException ex) {
                //ex.printStackTrace();
                outputTextArea.setText("Error creating playlist. Please try again.\n");
            } 
        }
    }

    private void searchSongs() {
        String keyword = JOptionPane.showInputDialog(null, "Enter search keyword:");
        if (keyword != null && !keyword.isEmpty()) {
            try {
                String query = "SELECT * FROM songs WHERE song_name LIKE ? OR singer LIKE ?";
                PreparedStatement statement = conn.prepareStatement(query);
                statement.setString(1, "%" + keyword + "%");
                statement.setString(2, "%" + keyword + "%");
                ResultSet resultSet = statement.executeQuery();

                outputTextArea.setText("Search Results:\n");
                while (resultSet.next()) {
                    outputTextArea.append("Song: " + resultSet.getString("song_name")+
                            " - Singer: " + resultSet.getString("singer") +
                            " - Genre: " + resultSet.getString("genre") + "\n");
                }

                statement.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
                outputTextArea.setText("Error searching songs. Please try again.\n");
            }
        }
    }

    private void addSongToPlaylist() {
        String selectedSong = songList.getSelectedValue();
        if (selectedSong != null) {
            String playlistName = JOptionPane.showInputDialog(null, "Enter playlist name:");
            if (playlistName != null && !playlistName.isEmpty()) {
                try {
                	String q = String.format("Insert into %s (SONG_NAME) values ( '%s' )",playlistName, selectedSong);
                    System.out.println(q);
                	PreparedStatement s = conn.prepareStatement(q);
                    int r = s.executeUpdate();
                    System.out.println("DOne");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    outputTextArea.setText("Error adding song to playlist. Please try again.\n");
                }
            } else {
                outputTextArea.setText("Please enter a valid playlist name.\n");
            }
        } else {
            outputTextArea.setText("Please select a song to add to playlist.\n");
        }
    }

    private int getPlaylistId(String playlistName) throws SQLException {
        String query = "SELECT playlist_id FROM playlists WHERE playlist_name = ?";
        PreparedStatement statement = conn.prepareStatement(query);
        statement.setString(1, playlistName);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            return resultSet.getInt("playlist_id");
        } else {
            return -1; // Playlist not found
        }
    }

    private int getSongId(String songName) throws SQLException {
        String query = "SELECT song_id FROM songs WHERE song_name = ?";
        PreparedStatement statement = conn.prepareStatement(query);
        statement.setString(1, songName);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            return resultSet.getInt("song_id");
        } else {
            return -1; // Song not found
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(MusicPlayer::new);
    }
}
