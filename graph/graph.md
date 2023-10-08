graph TD;

    A[Start] --> B[Task Scheduler triggers every 3 hours];
    B --> C["Run Batch File"];
    
    subgraph C["Batch File Operations"]
        C1["Delete existing JSON files from 'playlists' folder"] --> C2["Execute 'git pull' to sync local repo with remote"];
        C2 --> C3["Execute 'git commit' with message 'Delete old JSON files'"];
        C3 --> C4["Execute 'git push' to update remote repo"];
    end
    
    C --> D["Run Python Script"];
    
    subgraph D["Python Script Workflow"]
        D1["Initialize Script"] --> D2["Load Environment Variables from .env file"];
        D2 --> D3["Handle OAuth2 Authentication"];
        D3 -->|OAuth2 Token| D4["Authorize and Connect to Spotify API"];
        D4 --> D5["Fetch list of Playlists from Spotify"];
        D5 --> D6["Fetch Tracks for each Playlist"];
        D6 --> D7["Transform fetched data to desired format"];
        D7 --> D8["Save transformed data as JSON files in 'playlists' folder"];
    end
    
    D --> E["Run Batch File Again for Git Operations"];
    
    subgraph E["Second Batch File Operations"]
        E1["Execute 'git pull' to sync local repo"] --> E2["Execute 'git add' to stage new JSON files"];
        E2 --> E3["Execute 'git commit' with message 'New JSON files'"];
        E3 --> E4["Execute 'git push' to update remote repo with new JSON files"];
    end
    
    E4 --> F[End];
