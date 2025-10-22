/*+ NestLoop(c u p ph v)
 NestLoop(c u p ph)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(v)
 Leading(((((c u) p) ph) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount=1171 AND p.CommentCount>=0 AND p.CommentCount<=14 AND v.BountyAmount>=0 AND v.BountyAmount<=200 AND u.Views>=0 AND u.Views<=40 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=117;

