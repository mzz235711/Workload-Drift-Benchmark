/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.CreationDate>='2011-04-27 20:48:00'::timestamp AND ph.CreationDate<='2014-09-12 16:32:43'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes<=18 AND u.CreationDate<='2014-09-05 14:51:36'::timestamp;

