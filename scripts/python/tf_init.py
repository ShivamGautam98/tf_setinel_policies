import subprocess
command_to_run = "terraform init -no-color"
command_out = subprocess.run(command_to_run, shell=True, capture_output=True)
if (command_out.returncode == 1):
    print("Sorry, Failed to run the command")
else:
    output = command_out.stdout.decode()
    print(output)
