/*+ HashJoin(v u b)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-08-22 17:05:45'::timestamp AND b.Date<='2014-09-07 02:28:34'::timestamp AND u.Views<=56 AND u.DownVotes>=0;

