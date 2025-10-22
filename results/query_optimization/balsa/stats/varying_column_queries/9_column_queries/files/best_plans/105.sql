/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND u.Views>=0 AND u.Views<=514 AND u.UpVotes>=0 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-28 05:55:31'::timestamp AND u.CreationDate<='2014-08-27 12:43:55'::timestamp;

