/*+ HashJoin(u v c b)
 HashJoin(u v c)
 HashJoin(u v)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 SeqScan(b)
 Leading((((u v) c) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=37 AND u.CreationDate<='2014-09-01 09:02:47'::timestamp;

