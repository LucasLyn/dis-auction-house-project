CREATE OR REPLACE VIEW vw_invest_accounts
AS
SELECT i.account_number, a.cpr_number, a.created_date 
    FROM investmentaccounts i
    JOIN accounts a ON i.account_number = a.account_number
    JOIN certificates_of_deposit cod on i.account_number = cod.cd_number ;
