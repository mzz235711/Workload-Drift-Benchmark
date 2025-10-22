/*+ HashJoin(p ph c u v)
 HashJoin(p ph c u)
 HashJoin(p ph c)
 HashJoin(p ph)
 IndexScan(p)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 Leading(((((p ph) c) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.ViewCount<=1052 AND ph.PostHistoryTypeId=3 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views<=22 AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0;

