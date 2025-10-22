/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-02 21:40:11'::timestamp AND b.Date<='2014-09-12 16:43:19'::timestamp AND u.Reputation>=1 AND u.Reputation<=429 AND u.Views=0 AND u.CreationDate>='2010-07-26 20:48:32'::timestamp AND u.CreationDate<='2014-09-11 21:02:30'::timestamp;

