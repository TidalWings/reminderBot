FROM python:3.9-slim

# Set the timezone
ENV TZ=America/Los_Angeles

# Set the working directory
WORKDIR /app

# Copy the bot script, requirements file, and the utils directory
COPY bot.py .
COPY requirements.txt .
COPY styles.json /app/styles.json
COPY utils/reminder_manager.py ./utils/

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Run the bot script
CMD [ "python", "bot.py" ]
