/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate<='2014-08-22 13:11:46'::timestamp AND u.Views>=0 AND u.Views<=268 AND u.DownVotes>=0 AND u.CreationDate<='2014-07-28 20:32:56'::timestamp;

