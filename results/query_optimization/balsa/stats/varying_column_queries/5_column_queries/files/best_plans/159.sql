/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation=4 AND u.Views<=65 AND u.UpVotes>=0 AND u.CreationDate>='2011-01-13 19:57:10'::timestamp AND u.CreationDate<='2014-09-13 10:48:35'::timestamp;

