UPDATE MODEL SET MOD_WAIT_CHG = CASE WHEN MOD_CODE = "C-90A" THEN 100
WHEN MOD_CODE = "PA23-250" THEN 50
WHEN MOD_CODE = "PA31-350" THEN 75
END;