import os
import re
import pandas as pd

# Chemin du répertoire contenant les fichiers logs
log_directory = "."  
output_csv = "resultats_logs.csv"

# Regex pour extraire les données nécessaires
norm_y_pattern = r"\|\|y\|\|=(\d+)"
norm_y2_pattern = r"\|\|y2\|\| = (\d+)"
mpispvm_pattern = r"MPISpMV:(\d+\.\d+e[+-]?\d+)"
spvm_pattern = r"SpMV:(\d+\.\d+e[+-]?\d+)"

# Liste pour stocker les résultats
results = []

# Parcours des fichiers dans le répertoire
for filename in os.listdir(log_directory):
    if filename.startswith("log-") and not filename.startswith("."):  # S'assurer que ce sont des fichiers log
        filepath = os.path.join(log_directory, filename)

        # Lecture du contenu du fichier
        with open(filepath, "r") as file:
            content = file.read()

        # Extraction des données depuis le nom du fichier
        nx_match = re.search(r"NX(\d+)", filename)
        npi_match = re.search(r"NPI(\d+)", filename)
        nx = int(nx_match.group(1)) if nx_match else None
        npi = int(npi_match.group(1)) if npi_match else None

        # Extraction des données depuis le contenu du fichier
        norm_y = int(re.search(norm_y_pattern, content).group(1)) if re.search(norm_y_pattern, content) else None
        norm_y2 = int(re.search(norm_y2_pattern, content).group(1)) if re.search(norm_y2_pattern, content) else None
        mpispvm_time = float(re.search(mpispvm_pattern, content).group(1)) if re.search(mpispvm_pattern, content) else None
        spvm_time = float(re.search(spvm_pattern, content).group(1)) if re.search(spvm_pattern, content) else None

        # Calcul des métriques supplémentaires si possible
        if mpispvm_time and spvm_time and npi:
            acceleration = spvm_time / mpispvm_time
            efficiency = acceleration / npi
        else:
            acceleration = None
            efficiency = None

        # Ajout des résultats sous forme de dictionnaire
        results.append({
            "Fichier": filename,
            "NX": nx,
            "NPI": npi,
            "Norme ||y||": norm_y,
            "Norme ||y2||": norm_y2,
            "MPISpMV Time": mpispvm_time,
            "SpMV Time": spvm_time,
            "Acceleration": acceleration,
            "Efficiency": efficiency
        })

# Création d'un DataFrame Pandas pour organiser les résultats
df = pd.DataFrame(results)

# Sauvegarde dans un fichier CSV
df.to_csv(output_csv, index=False)

print(f"Extraction terminée ! Les résultats sont enregistrés dans le fichier {output_csv}.")

