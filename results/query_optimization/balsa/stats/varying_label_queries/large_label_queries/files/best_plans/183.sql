/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-06 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-19 20:17:05'::timestamp;

