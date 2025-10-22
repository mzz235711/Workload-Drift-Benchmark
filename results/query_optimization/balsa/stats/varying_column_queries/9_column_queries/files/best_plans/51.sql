/*+ HashJoin(b c v u)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.CreationDate='2013-05-16 00:00:00'::timestamp AND b.Date>='2010-07-27 09:13:47'::timestamp AND b.Date<='2014-09-07 12:46:58'::timestamp AND u.Reputation<=264 AND u.Views>=0 AND u.Views<=228 AND u.CreationDate>='2011-08-11 08:45:25'::timestamp AND u.CreationDate<='2014-09-12 17:44:54'::timestamp;

