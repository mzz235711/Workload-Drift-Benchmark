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
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate<='2014-09-10 00:59:28'::timestamp AND ph.CreationDate>='2010-08-19 13:09:50'::timestamp AND ph.CreationDate<='2014-08-27 15:43:24'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=4;

