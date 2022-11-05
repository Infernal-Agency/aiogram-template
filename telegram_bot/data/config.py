import os



BOT_TOKEN = str(os.getenv("BOT_TOKEN"))
admins = [os.getenv("ADMINS")]

ip = os.getenv("ip")

aiogram_redis = {
    'host': ip,
}

redis = {
    'address': (ip, 6379),
    'encoding': 'utf8'
}
