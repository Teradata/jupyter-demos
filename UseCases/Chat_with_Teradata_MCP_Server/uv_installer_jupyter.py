import subprocess
import os
import sys
from pathlib import Path

def install_uv():
    """Install uv package manager in Jupyter environment"""
    
    print("🔧 Installing uv package manager...")
    
    # Method 1: Install via pip (recommended for Jupyter)
    try:
        print("Installing uv via pip...")
        result = subprocess.run([sys.executable, "-m", "pip", "install", "uv"], 
                              capture_output=True, text=True)
        
        if result.returncode == 0:
            print("✅ uv installed successfully via pip!")
            return True
        else:
            print("❌ pip installation failed, trying curl method...")
            
    except Exception as e:
        print(f"pip method failed: {e}")
    
    # Method 2: Install via curl (fallback)
    try:
        print("Installing uv via curl...")
        # Download and install uv
        curl_result = subprocess.run([
            "curl", "-LsSf", "https://astral.sh/uv/install.sh"
        ], capture_output=True, text=True)
        
        if curl_result.returncode == 0:
            # Run the installer
            install_result = subprocess.run([
                "sh", "-c", curl_result.stdout
            ], capture_output=True, text=True)
            
            if install_result.returncode == 0:
                print("✅ uv installed successfully via curl!")
                return True
                
    except Exception as e:
        print(f"curl method failed: {e}")
    
    print("❌ Failed to install uv")
    return False

def check_uv_installation():
    """Check if uv is properly installed"""
    try:
        result = subprocess.run(["uv", "--version"], 
                              capture_output=True, text=True)
        if result.returncode == 0:
            print(f"✅ uv is installed: {result.stdout.strip()}")
            return True
        else:
            print("❌ uv is not accessible")
            return False
    except FileNotFoundError:
        print("❌ uv command not found")
        return False

def setup_teradata_environment():
    """Complete setup for Teradata MCP Server"""
    
    print("🚀 Setting up Teradata MCP Server Environment")
    print("=" * 50)
    
    # Step 1: Install uv
    if not check_uv_installation():
        if not install_uv():
            print("❌ Cannot proceed without uv. Please install it manually.")
            return False
    
    # Step 2: Create directory structure
    print("\n📁 Setting up directory structure...")
    os.makedirs("MCP", exist_ok=True)
    os.chdir("MCP")
    
    # Remove existing directory if it exists
    if os.path.exists("teradata-mcp-server"):
        print("Removing existing teradata-mcp-server directory...")
        subprocess.run(["rm", "-rf", "teradata-mcp-server"])
    
    # Step 3: Clone repository
    print("\n📦 Cloning Teradata MCP Server repository...")
    clone_result = subprocess.run([
        "git", "clone", "https://github.com/Teradata/teradata-mcp-server.git"
    ], capture_output=True, text=True)
    
    if clone_result.returncode != 0:
        print(f"❌ Failed to clone repository: {clone_result.stderr}")
        return False
    
    os.chdir("teradata-mcp-server")
    print("✅ Repository cloned successfully")
    
    # Step 4: Setup virtual environment
    print("\n🐍 Setting up Python virtual environment, it will take approax 3 minutes, please wait⌛.")
    sync_result = subprocess.run(["uv", "sync"], capture_output=True, text=True)
    
    if sync_result.returncode != 0:
        print(f"❌ Failed to sync environment: {sync_result.stderr}")
        return False

    sync_result = subprocess.run(["uv", "pip" , "install", "panel==1.3.4"], capture_output=True, text=True)
    if sync_result.returncode != 0:
        print(f"❌ Failed to sync environment: {sync_result.stderr}")
        return False
    
    print("✅ Virtual environment created")
    
    # Step 5: Setup environment file
    print("\n⚙️ Setting up environment configuration...")
    env_files = ["env"]
    env_created = False
    
    for env_file in env_files:
        if os.path.exists(env_file):
            if env_file != ".env":
                subprocess.run(["cp", env_file, ".env"])
            env_created = True
            break
    
    if not env_created:
        with open(".env", "w") as f:
            f.write("DATABASE_URI=\n")
    
    print("✅ Environment file created")
    
    # Step 6: Get database password
    print("\n🔐 Database configuration...")
    import getpass
    password = getpass.getpass("Enter database password for demo_user: ")
    # OPENAI_API_KEY = getpass.getpass("Enter your OpenAI API key:")
    
    if not password:
        print("❌ Password cannot be empty")
        return False
    
    # Update .env file
    connection_string = f"teradatasql://demo_user:{password}@host.docker.internal"
    
    # Read existing .env content
    env_content = ""
    if os.path.exists(".env"):
        with open(".env", "r") as f:
            env_content = f.read()
    
    # Update or add DATABASE_URI
    if "DATABASE_URI=" in env_content:
        # Replace existing
        lines = env_content.split('\n')
        for i, line in enumerate(lines):
            if line.startswith("DATABASE_URI="):
                lines[i] = f"DATABASE_URI={connection_string}"
                break
            # if line.startswith("OPENAI_API_KEY="):
            #     lines[i] = f"OPENAI_API_KEY={OPENAI_API_KEY}"
            #     break
        env_content = '\n'.join(lines)
    else:
        # Add new
        env_content += f"\nDATABASE_URI={connection_string}\n"
    
    with open(".env", "w") as f:
        f.write(env_content)
    
    print("✅ Database connection configured")
    # print("✅ OpenAI key configured")
    
    # Step 7: Install Node.js
    print("\n📦 Installing Node.js...")
    node_install_result = subprocess.run([
        "curl", "-o-", "https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh"
    ], capture_output=True, text=True)
    
    if node_install_result.returncode == 0:
        subprocess.run(["bash", "-c", node_install_result.stdout])
        print("✅ Node.js setup initiated")
    
    # Step 8: Add MCP CLI
    print("\n🔧 Adding MCP CLI dependency...")
    mcp_result = subprocess.run(["uv", "add", "mcp[cli]"], 
                               capture_output=True, text=True)
    
    if mcp_result.returncode == 0:
        print("✅ MCP CLI added successfully")
    else:
        print(f"⚠️ Warning: {mcp_result.stderr}")
    
    # Change directory back to initial path (2 directories up)
    print("\n📁 Check the current directory...")
    try:
        # os.chdir("../..")  # Go up 2 directories
        current_dir = os.getcwd()
        print(f"✅ Current directory: {current_dir}")
    except Exception as e:
        print(f"⚠️ Warning: Could not change to initial directory: {e}")
    
    
    print("\n🏗️ Copy MCP client to current directory...")
    shutil.copy("../../td_mcp_client.py", ".")
    print("✅ File moved successfully!")
    
    print("\n✅ Setup completed successfully!")
    print("\nTo start the server, run:")
    print("uv run mcp dev ./src/teradata_mcp_server/server.py")
    return True

def start_teradata_server():
    """Start the Teradata MCP Server"""
    server_path = "./src/teradata_mcp_server/server.py"
    from pathlib import Path
    
    if not os.path.exists(server_path):
        print(f"❌ Server file not found: {server_path}")
        return False
    
    print("🚀 Starting Teradata MCP Cliennt...")
    print("Press Ctrl+C to stop the server")
    
    try:
        process = subprocess.Popen(
            ["uv", "run", server_path],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            universal_newlines=True
        )
        
        for line in process.stdout:
            print(line.rstrip())
        
        return_code = process.wait()
        print(f"Server stopped with return code: {return_code}")
        
    except KeyboardInterrupt:
        print("\n🛑 Server stopped by user")
        process.terminate()

# Usage
print("Teradata MCP Server Setup Tools Loaded!")
print("\nAvailable functions:")
print("- install_uv(): Install uv package manager")
print("- check_uv_installation(): Check if uv is installed")
print("- setup_teradata_environment(): Complete setup process")
print("- start_teradata_server(): Start the MCP server")
print("\nTo run complete setup:")
print("setup_teradata_environment()")