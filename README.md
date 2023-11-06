# Google Search Telegram Bot

This repository contains the source code for a Telegram bot that integrates with Google search, providing users the ability to perform search queries directly from Telegram chats. 

## Table of Contents

- [Features](#features)
- [Installing](#installing)
- [Usage](#usage)
- [Disclaimer](#disclaimer)

## Features

- **Search Integration**: The bot integrates with Google Search to provide results directly in your chat.
- **Response Formatting**: Search results are formatted in a readable and comprehensible way to ensure a good user experience.
- **Simple Interface**: Just type your query and get the results, it's that simple.
- **Links**: The bot provides links to the top search results, so you can visit them directly from your chat.

## Installing

To set up your own instance of the bot, follow these steps:

1. Clone this repository using git clone https://github.com/dro14/web-searching-bot.git.
2. Navigate to the cloned repository.
3. Install the required dependencies with pip install -r requirements.txt.
4. Rename .env_sample to .env and replace <YOUR_API_HASH> and <YOUR_API_ID> from my.telegram.org, and <YOUR_BOT_TOKEN> with your actual bot token you received from the BotFather.
5. Now, run the bot using python project.py.

## Usage

To use the bot, add it to your chat or open a private chat with it. Then, simply type your search query. The bot will respond with the top hits from Google's search results. 

Please note that the quality of search results and response times may vary based on the complexity of the query, the load on the Google Search servers, and the efficiency of the Telegram API.

## Disclaimer

This bot is intended for educational and personal use. It is not endorsed or affiliated with Google, Telegram or any other parties. The maintainers of this repository are not responsible for any misuse of the bot, and urge users to use it responsibly, abiding by the terms of service of Google and Telegram at all times.

---

For any additional questions or comments, please open an issue or a pull request. Happy searching!
